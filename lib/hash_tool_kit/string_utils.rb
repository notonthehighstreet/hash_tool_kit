module HashToolKit
  class StringUtils
    # copied and adapted from
    # https://github.com/rails/rails/blob/8b611b705b668d98ad2b7cf166f7e99cffca6ba3/activesupport/lib/active_support/inflector/methods.rb#L91
    def self.to_underscore(camel_cased_word)
      word = camel_cased_word.to_s.gsub('::', '/')
      word.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
      word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
      word.tr!("-", "_")
      word.downcase!
      word
    end

    def self.to_camelcase(str)
      str.split('_').map {|w| w.capitalize}.join
    end
  end
end
