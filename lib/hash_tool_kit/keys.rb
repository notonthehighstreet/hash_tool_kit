module HashToolKit
  class Keys

    def self.camelize(h)
      format_recursively(:camelize, h)
    end

    def self.underscorize(h)
      format_recursively(:underscore, h)
    end

    private

    def self.format_recursively(action, h)
      formatted_hash = {}

      h.each do |k, v|
        new_key = k.to_s.send(action)
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
