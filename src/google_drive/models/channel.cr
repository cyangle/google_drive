#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "nason"
require "time"
require "log"

module GoogleDrive
  # An notification channel used to watch for resource changes.
  class Channel
    include NASON::Serializable

    # Optional properties
    # The address where notifications are delivered for this channel.
    @[NASON::Field(key: "address", type: String?, nillable: true)]
    property address : String?

    # Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    @[NASON::Field(key: "expiration", type: String?, nillable: true)]
    property expiration : String?

    # A UUID or similar unique string that identifies this channel.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    @[NASON::Field(key: "kind", type: String?, default: "api#channel", nillable: true)]
    property kind : String?

    # Additional parameters controlling delivery channel behavior. Optional.
    @[NASON::Field(key: "params", type: Hash(String, String)?, nillable: true)]
    property params : Hash(String, String)?

    # A Boolean value to indicate whether payload is wanted. Optional.
    @[NASON::Field(key: "payload", type: Bool?, nillable: true)]
    property payload : Bool?

    # An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    @[NASON::Field(key: "resourceId", type: String?, nillable: true)]
    property resource_id : String?

    # A version-specific identifier for the watched resource.
    @[NASON::Field(key: "resourceUri", type: String?, nillable: true)]
    property resource_uri : String?

    # An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    @[NASON::Field(key: "token", type: String?, nillable: true)]
    property token : String?

    # The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.
    @[NASON::Field(key: "type", type: String?, nillable: true)]
    property _type : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @address : String? = nil, @expiration : String? = nil, @id : String? = nil, @kind : String? = "api#channel", @params : Hash(String, String)? = nil, @payload : Bool? = nil, @resource_id : String? = nil, @resource_uri : String? = nil, @token : String? = nil, @_type : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        address == o.address &&
        expiration == o.expiration &&
        id == o.id &&
        kind == o.kind &&
        params == o.params &&
        payload == o.payload &&
        resource_id == o.resource_id &&
        resource_uri == o.resource_uri &&
        token == o.token &&
        _type == o._type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, expiration, id, kind, params, payload, resource_id, resource_uri, token, _type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = GoogleDrive.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
