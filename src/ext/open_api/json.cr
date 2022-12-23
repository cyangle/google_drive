module OpenApi
  module Json
    # Builds the object from a JSON::Any hash
    # @param [Hash] JSON::Any
    # @return [Object] Returns the model itself
    def self.build_from_hash(hash : Hash)
      from_json(hash.to_json)
    end

    def self.build_from_json_any(json_any : JSON::Any)
      from_json(json_any.to_json)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_json_any : JSON::Any
      JSON.parse(to_json)
    end

    def to_hash : Hash(String, JSON::Any)
      to_json_any.as_h
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o : self)
      self == o
    end

    def after_initialize
      raise JSON::ParseException.new("Validation failed: #{list_invalid_properties}", 0, 0) if !valid?
    end
  end
end
