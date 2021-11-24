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
  # Representation of a shared drive.
  class Drive
    include NASON::Serializable

    # Optional properties
    @[NASON::Field(key: "backgroundImageFile", type: DriveBackgroundImageFile?, nillable: true)]
    property background_image_file : DriveBackgroundImageFile?

    # A short-lived link to this shared drive's background image.
    @[NASON::Field(key: "backgroundImageLink", type: String?, nillable: true)]
    property background_image_link : String?

    @[NASON::Field(key: "capabilities", type: DriveCapabilities?, nillable: true)]
    property capabilities : DriveCapabilities?

    # The color of this shared drive as an RGB hex string. It can only be set on a drive.drives.update request that does not set themeId.
    @[NASON::Field(key: "colorRgb", type: String?, nillable: true)]
    property color_rgb : String?

    # The time at which the shared drive was created (RFC 3339 date-time).
    @[NASON::Field(key: "createdTime", type: Time?, nillable: true)]
    property created_time : Time?

    # Whether the shared drive is hidden from default view.
    @[NASON::Field(key: "hidden", type: Bool?, nillable: true)]
    property hidden : Bool?

    # The ID of this shared drive which is also the ID of the top level folder of this shared drive.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # Identifies what kind of resource this is. Value: the fixed string \"drive#drive\".
    @[NASON::Field(key: "kind", type: String?, default: "drive#drive", nillable: true)]
    property kind : String?

    # The name of this shared drive.
    @[NASON::Field(key: "name", type: String?, nillable: true)]
    property name : String?

    @[NASON::Field(key: "restrictions", type: DriveRestrictions?, nillable: true)]
    property restrictions : DriveRestrictions?

    # The ID of the theme from which the background image and color will be set. The set of possible driveThemes can be retrieved from a drive.about.get response. When not specified on a drive.drives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don't set colorRgb or backgroundImageFile.
    @[NASON::Field(key: "themeId", type: String?, nillable: true)]
    property theme_id : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @background_image_file : DriveBackgroundImageFile? = nil, @background_image_link : String? = nil, @capabilities : DriveCapabilities? = nil, @color_rgb : String? = nil, @created_time : Time? = nil, @hidden : Bool? = nil, @id : String? = nil, @kind : String? = "drive#drive", @name : String? = nil, @restrictions : DriveRestrictions? = nil, @theme_id : String? = nil)
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
        background_image_file == o.background_image_file &&
        background_image_link == o.background_image_link &&
        capabilities == o.capabilities &&
        color_rgb == o.color_rgb &&
        created_time == o.created_time &&
        hidden == o.hidden &&
        id == o.id &&
        kind == o.kind &&
        name == o.name &&
        restrictions == o.restrictions &&
        theme_id == o.theme_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [background_image_file, background_image_link, capabilities, color_rgb, created_time, hidden, id, kind, name, restrictions, theme_id].hash
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