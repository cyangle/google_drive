module JSON
  module Serializable
    # Builds the object from a JSON::Any hash
    # @param [Hash] JSON::Any
    # @return [Object] Returns the model itself
    def self.build_from_hash(hash : JSON::Any)
      from_json(hash.to_json)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash : JSON::Any
      JSON.parse(to_json)
    end
  end
end
