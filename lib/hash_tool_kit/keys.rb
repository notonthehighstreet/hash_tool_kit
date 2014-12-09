module HashToolKit
  class Keys

    def self.camelize(h)
      format_recursively(:to_camelcase, h)
    end

    def self.underscorize(h)
      format_recursively(:to_underscore, h)
    end

    private

    def self.format_recursively(action, h)
      formatted_hash = {}

      h.each do |k, v|
        new_key = StringUtils.send(action, k.to_s)
        new_key[0] = new_key[0].downcase
        
        case v.class.to_s
        when 'Hash'
          formatted_hash[new_key] = format_recursively(action, v)
        when 'Array'
          formatted_hash[new_key] ||= []
          v.each_with_index do |a, i|
            formatted_hash[new_key] << format_recursively(action, a)
          end
        else
          formatted_hash[new_key] = v
        end
      end

      return formatted_hash
    end
  end
end
