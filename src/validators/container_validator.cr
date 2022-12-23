module OpenApi
  class ContainerValidator
    def self.valid?(container : Array(T)) : Bool forall T
      container.each do |item|
        if item.is_a?(OpenApi::Validatable)
          return false unless item.valid?
        end
      end

      true
    end

    def self.valid?(container : Hash(U, T)) : Bool forall U, T
      container.each do |_key, value|
        if value.is_a?(OpenApi::Validatable)
          return false unless value.valid?
        end
      end

      true
    end

    def self.validate(container : Array(T)) : Nil forall T
      container.each do |item|
        if item.is_a?(OpenApi::Validatable)
          item.validate
        end
      end
    end

    def self.validate(container : Hash(U, T)) : Nil forall U, T
      container.each do |_key, value|
        if value.is_a?(OpenApi::Validatable)
          value.validate
        end
      end
    end

    def self.list_invalid_properties_for(key : String, container : Array(T)) : Array(String) forall T
      container.each_with_object(Array(String).new) do |item, invalid_properties|
        if item.is_a?(OpenApi::Validatable)
          invalid_properties.concat(item.list_invalid_properties_for(key))
        end
      end
    end

    def self.list_invalid_properties_for(key : String, container : Hash(U, T)) : Array(String) forall U, T
      container.each_with_object(Array(String).new) do |(_key, value), invalid_properties|
        if value.is_a?(OpenApi::Validatable)
          invalid_properties.concat(value.list_invalid_properties_for(key))
        end
      end
    end
  end
end
