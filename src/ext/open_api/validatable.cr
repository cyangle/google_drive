module OpenApi
  module Validatable
    abstract def valid? : Bool
    abstract def list_invalid_properties : Array(String)

    def validate : Nil
      raise "#{self.class} is invalid" unless valid?
    end

    def list_invalid_properties_for(key : String) : Array(String)
      list_invalid_properties.map { |msg| "#{key}: #{msg}" }
    end
  end
end
