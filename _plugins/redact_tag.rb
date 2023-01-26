module Jekyll
    class RedactTagBlock < Liquid::Block

        def render(context)
            text = super
            redacted_text = text.split.map{|word| "█" * word.length}.join(" ")
            "<span onmouseover=\"this.innerHTML='#{text}';\" onmouseout=\"this.innerHTML='#{redacted_text}';\">#{redacted_text}</span>"
        end
    end
end

Liquid::Template.register_tag('redact', Jekyll::RedactTagBlock)