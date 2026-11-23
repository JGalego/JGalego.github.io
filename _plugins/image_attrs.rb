require "fastimage"

# Adds performance attributes to every <img> in the rendered HTML, so posts
# can keep using plain `<img src="..." width="50%" alt="..."/>`:
#
#   * intrinsic width/height (local images only), so the browser can reserve
#     space before the image loads and the page doesn't jump;
#   * loading="lazy" on everything except the first image of the page, which
#     is usually above the fold;
#   * decoding="async".
#
# A percentage width (width="50%") is moved to an inline style so that the
# width/height attributes can carry the real pixel dimensions.
module ImageAttrs
    IMG = /<img\b[^>]*>/i
    SIZES = {}

    def self.attr(tag, name)
        m = tag.match(/\s#{name}\s*=\s*(?:"([^"]*)"|'([^']*)')/i)
        m && (m[1] || m[2])
    end

    def self.local_size(src, site)
        return nil if src.nil? || src =~ %r{\A(?:[a-z][a-z0-9+.-]*:)?//}i || src.start_with?("data:")
        path = File.join(site.source, src.sub(/[?#].*\z/, "").sub(/\A#{Regexp.escape(site.baseurl.to_s)}/, ""))
        return nil unless File.file?(path)
        SIZES[path] ||= FastImage.size(path)
    end

    def self.process(html, site)
        first = true
        html.gsub(IMG) do |tag|
            eager = first
            first = false
            extra = []

            if attr(tag, "height").nil? && (size = local_size(attr(tag, "src"), site))
                w, h = size
                width = attr(tag, "width")
                if width.nil?
                    extra << %(width="#{w}" height="#{h}")
                elsif width =~ /\A\d+\z/
                    extra << %(height="#{(width.to_i * h / w.to_f).round}")
                elsif width =~ /\A[\d.]+%\z/
                    tag = tag.sub(/\swidth\s*=\s*(?:"[^"]*"|'[^']*')/i, "")
                    style = attr(tag, "style")
                    if style
                        tag = tag.sub(/\sstyle\s*=\s*(?:"[^"]*"|'[^']*')/i, %( style="width:#{width};#{style}"))
                    else
                        extra << %(style="width:#{width}")
                    end
                    extra << %(width="#{w}" height="#{h}")
                end
            end

            extra << %(loading="lazy") unless eager || attr(tag, "loading")
            extra << %(decoding="async") unless attr(tag, "decoding")
            next tag if extra.empty?

            tag.sub(%r{\s*/?>\z}, " #{extra.join(' ')}>")
        end
    end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
    next unless doc.output_ext == ".html" && doc.output
    doc.output = ImageAttrs.process(doc.output, doc.site)
end
