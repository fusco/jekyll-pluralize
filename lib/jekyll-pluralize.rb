# frozen_string_literal: true

# jekyll module
module Jekyll
  # Pluralize
  module Pluralize
    # pluralize method  {{ number | pluralize: 'word', words' }}
    def pluralize(*args)
      analyzed_words(args[0], args[1], args[2]) if args[0].numeric?
    end

    def analyzed_words(number, singular, plural)
      if plural.nil?
        plural_undefined(number, singular)
      else
        plural_defined(number, singular, plural)
      end
    end

    def plural_defined(number, singular, plural)
      one_item(number) ? singular : plural
    end

    def plural_undefined(number, singular)
      one_item(number) ? singular : singular.concat('s')
    end

    def one_item(number)
      return true if number.to_i.equal?(1)
    end
  end
end

# Override Integer CLass
class Integer
  def numeric?
    return true if self =~ /\A\d+\Z/

    begin
      true if Float(self)
    rescue TypeError
      false
    end
  end
end

Liquid::Template.register_filter(Jekyll::Pluralize)
