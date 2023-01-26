module Jekyll
    module CustomFilter
        # Calculate someone's age from their date of birth
        # https://stackoverflow.com/questions/819263/get-persons-age-in-ruby
        require 'date'
        def age(dob)
            dob = Date.parse(dob)
            now = Time.now.utc.to_date
            now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
        end

        # Converting numbers to hex using to_s in Ruby
        # https://tosbourn.com/converting-numbers-hex-using-to_s-ruby/
        def hex(input)
            input.to_s(16)
        end

        def redact(input)
            "█" * input.length
        end
    end
end

Liquid::Template.register_filter(Jekyll::CustomFilter)
  