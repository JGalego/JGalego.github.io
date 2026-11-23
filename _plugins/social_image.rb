# Uses the first local image of a post as its social card (og:image /
# twitter:image, emitted by jekyll-seo-tag), unless the post sets `image:`
# in its front matter. Posts without a local image keep the site default.
#
# Not every platform renders WebP previews, so a WebP image is only used if
# a JPEG version exists at assets/images/social/<name>.jpg.
module SocialImage
    HTML_IMG = /<img\b[^>]*?\ssrc\s*=\s*["']([^"']+)["']/i
    MD_IMG = /!\[[^\]]*\]\(([^)\s]+)/

    def self.pick(post)
        srcs = post.content.to_enum(:scan, Regexp.union(HTML_IMG, MD_IMG)).map do
            m = Regexp.last_match
            [m.begin(0), m[1] || m[2]]
        end
        srcs.sort.each do |_, src|
            next unless src =~ %r{\A/?assets/}
            path = "/" + src.sub(%r{\A/}, "")
            case File.extname(path).downcase
            when ".jpg", ".jpeg", ".png"
                return path if File.file?(File.join(post.site.source, path))
            when ".webp"
                jpg = "/assets/images/social/#{File.basename(path, '.*')}.jpg"
                return jpg if File.file?(File.join(post.site.source, jpg))
            end
        end
        nil
    end
end

Jekyll::Hooks.register :posts, :pre_render do |post|
    default = post.site.config["logo"]
    next unless post.data["image"].nil? || post.data["image"] == default
    image = SocialImage.pick(post)
    post.data["image"] = image if image
end
