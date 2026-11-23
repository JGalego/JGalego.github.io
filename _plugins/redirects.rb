# Generates a redirect stub at <from>/index.html for every entry in
# _data/redirects.yml, rendered with _layouts/redirect.html.
module Jekyll
    class RedirectGenerator < Generator
        safe true

        def generate(site)
            (site.data["redirects"] || []).each do |r|
                dir = r["from"].to_s.gsub(%r{\A/|/\z}, "")
                page = PageWithoutAFile.new(site, site.source, dir, "index.html")
                page.content = ""
                page.data.merge!(
                    "layout" => "redirect",
                    "sitemap" => false,
                    "redirect_to" => r["to"],
                    "redirect_name" => r["to"].to_s.gsub(%r{\A/|/\z}, "")
                )
                site.pages << page
            end
        end
    end
end
