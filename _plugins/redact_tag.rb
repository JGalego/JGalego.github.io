require "cgi"

module Jekyll
    # {% redact %}text{% endredact %} renders the text as █ blocks that can be
    # revealed one character at a time on hover, or all at once by tapping /
    # pressing Enter (see assets/js/site.js). The real text is kept in a
    # visually hidden span so screen readers and crawlers still get it.
    class RedactTagBlock < Liquid::Block
        def render(context)
            text = super
            mask = text.chars.map do |c|
                if c != " " then
                    "<span class=\"redact-char\" data-char=\"#{CGI.escapeHTML(c)}\">█</span>"
                else
                    c
                end
            end.join("")
            "<span class=\"redact\" tabindex=\"0\">" \
                "<span class=\"sr-only\">#{CGI.escapeHTML(text)}</span>" \
                "<span class=\"redact-mask\" aria-hidden=\"true\">#{mask}</span>" \
            "</span>"
        end
    end
end

Liquid::Template.register_tag('redact', Jekyll::RedactTagBlock)
