module Jekyll
    class RedactTagBlock < Liquid::Block
        def render(context)
            text = super
            text.chars.map do |c| 
                if c != " " then
                    "<span onmouseover=\"this.innerHTML='#{c}';\" onmouseout=\"this.innerHTML='█';\">█</span>" 
                else
                    c
                end
            end.join("")
        end
    end
end

Liquid::Template.register_tag('redact', Jekyll::RedactTagBlock)