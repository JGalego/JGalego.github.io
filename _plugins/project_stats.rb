require "json"
require "net/http"
require "uri"

# Keeps only the projects in site.data.projects whose GitHub repo has at least
# MIN_STARS stars, ordered by stars (most first) with ties broken by the most
# recent push. Stars and push dates are read from the GitHub API at build time
# for every project that has a `repo: owner/name` in _data/projects.yml, and
# are also exposed to templates as `project.stars` / `project.pushed_at`.
# Projects whose repo can't be found count as 0 stars.
#
# The Pages workflow also runs on a weekly schedule, so the list stays current
# even when nothing is pushed.
#
# One request per 100 repositories of each owner, cached for an hour in
# .jekyll-cache so `jekyll serve` doesn't hit the API on every regeneration.
# Set GITHUB_TOKEN to raise the API rate limit (the Pages workflow does).
#
# If the API can't be reached:
#   * in GitHub Actions the build fails, so the live site keeps its last good
#     Projects page instead of deploying an unfiltered one;
#   * locally the build continues with every project, in file order.
module ProjectStats
    TTL = 3600
    MIN_STARS = 1

    def self.fetch(owner)
        repos = {}
        (1..10).each do |page|
            uri = URI("https://api.github.com/users/#{owner}/repos?per_page=100&page=#{page}")
            req = Net::HTTP::Get.new(uri)
            req["Accept"] = "application/vnd.github+json"
            req["User-Agent"] = "jekyll-project-stats"
            token = ENV["GITHUB_TOKEN"].to_s
            req["Authorization"] = "Bearer #{token}" unless token.empty?
            res = Net::HTTP.start(uri.host, uri.port, use_ssl: true, open_timeout: 5, read_timeout: 10) do |http|
                http.request(req)
            end
            raise "GitHub API returned #{res.code}" unless res.is_a?(Net::HTTPSuccess)
            batch = JSON.parse(res.body)
            batch.each do |r|
                repos[r["full_name"].downcase] = { "stars" => r["stargazers_count"], "pushed_at" => r["pushed_at"] }
            end
            break if batch.size < 100
        end
        repos
    end

    def self.for_owner(owner)
        cache = Jekyll::Cache.new("ProjectStats")
        entry = cache.key?(owner) ? cache[owner] : nil
        return entry["repos"] if entry && Time.now.to_i - entry["at"] < TTL
        begin
            repos = fetch(owner)
            cache[owner] = { "at" => Time.now.to_i, "repos" => repos }
            repos
        rescue StandardError => e
            Jekyll.logger.warn "Projects:", "couldn't fetch GitHub stats for #{owner} (#{e.message})"
            entry ? entry["repos"] : nil
        end
    end

    class Generator < Jekyll::Generator
        safe true

        def generate(site)
            projects = site.data["projects"]
            return unless projects.is_a?(Array)

            owners = projects.map { |p| p["repo"].to_s.split("/").first }.compact.uniq
            stats = owners.to_h { |o| [o.downcase, ProjectStats.for_owner(o)] }
            if stats.values.any?(&:nil?)
                if ENV["GITHUB_ACTIONS"] == "true"
                    raise "Projects: GitHub stats unavailable; refusing to publish an unfiltered Projects page"
                end
                Jekyll.logger.warn "Projects:", "showing every project in _data/projects.yml order"
                return
            end

            projects.each do |p|
                owner = p["repo"].to_s.split("/").first.to_s.downcase
                s = (stats[owner] || {})[p["repo"].to_s.downcase]
                Jekyll.logger.warn "Projects:", "no public repo found for #{p['name']} (#{p['repo'].inspect})" unless s
                p["stars"] = s ? s["stars"] : 0
                p["pushed_at"] = s ? s["pushed_at"] : ""
            end

            shown, hidden = projects.partition { |p| p["stars"] >= MIN_STARS }
            unless hidden.empty?
                Jekyll.logger.info "Projects:", "hiding #{hidden.size} with fewer than #{MIN_STARS} star(s): " \
                    "#{hidden.map { |p| p['name'] }.join(', ')}"
            end

            # Stars descending, then last push descending; file order settles any remaining tie.
            site.data["projects"] = shown.each_with_index.sort do |(a, i), (b, j)|
                [b["stars"], b["pushed_at"], i] <=> [a["stars"], a["pushed_at"], j]
            end.map(&:first)
        end
    end
end
