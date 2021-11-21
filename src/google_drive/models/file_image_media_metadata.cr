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
  # Additional metadata about image media, if available.
  class FileImageMediaMetadata
    include NASON::Serializable

    # Optional properties
    # The aperture used to create the photo (f-number).
    @[NASON::Field(key: "aperture", type: Float32?, nillable: true)]
    property aperture : Float32?

    # The make of the camera used to create the photo.
    @[NASON::Field(key: "cameraMake", type: String?, nillable: true)]
    property camera_make : String?

    # The model of the camera used to create the photo.
    @[NASON::Field(key: "cameraModel", type: String?, nillable: true)]
    property camera_model : String?

    # The color space of the photo.
    @[NASON::Field(key: "colorSpace", type: String?, nillable: true)]
    property color_space : String?

    # The exposure bias of the photo (APEX value).
    @[NASON::Field(key: "exposureBias", type: Float32?, nillable: true)]
    property exposure_bias : Float32?

    # The exposure mode used to create the photo.
    @[NASON::Field(key: "exposureMode", type: String?, nillable: true)]
    property exposure_mode : String?

    # The length of the exposure, in seconds.
    @[NASON::Field(key: "exposureTime", type: Float32?, nillable: true)]
    property exposure_time : Float32?

    # Whether a flash was used to create the photo.
    @[NASON::Field(key: "flashUsed", type: Bool?, nillable: true)]
    property flash_used : Bool?

    # The focal length used to create the photo, in millimeters.
    @[NASON::Field(key: "focalLength", type: Float32?, nillable: true)]
    property focal_length : Float32?

    # The height of the image in pixels.
    @[NASON::Field(key: "height", type: Int32?, nillable: true)]
    property height : Int32?

    # The ISO speed used to create the photo.
    @[NASON::Field(key: "isoSpeed", type: Int32?, nillable: true)]
    property iso_speed : Int32?

    # The lens used to create the photo.
    @[NASON::Field(key: "lens", type: String?, nillable: true)]
    property lens : String?

    @[NASON::Field(key: "location", type: FileImageMediaMetadataLocation?, nillable: true)]
    property location : FileImageMediaMetadataLocation?

    # The smallest f-number of the lens at the focal length used to create the photo (APEX value).
    @[NASON::Field(key: "maxApertureValue", type: Float32?, nillable: true)]
    property max_aperture_value : Float32?

    # The metering mode used to create the photo.
    @[NASON::Field(key: "meteringMode", type: String?, nillable: true)]
    property metering_mode : String?

    # The number of clockwise 90 degree rotations applied from the image's original orientation.
    @[NASON::Field(key: "rotation", type: Int32?, nillable: true)]
    property rotation : Int32?

    # The type of sensor used to create the photo.
    @[NASON::Field(key: "sensor", type: String?, nillable: true)]
    property sensor : String?

    # The distance to the subject of the photo, in meters.
    @[NASON::Field(key: "subjectDistance", type: Int32?, nillable: true)]
    property subject_distance : Int32?

    # The date and time the photo was taken (EXIF DateTime).
    @[NASON::Field(key: "time", type: String?, nillable: true)]
    property time : String?

    # The white balance mode used to create the photo.
    @[NASON::Field(key: "whiteBalance", type: String?, nillable: true)]
    property white_balance : String?

    # The width of the image in pixels.
    @[NASON::Field(key: "width", type: Int32?, nillable: true)]
    property width : Int32?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @aperture : Float32? = nil, @camera_make : String? = nil, @camera_model : String? = nil, @color_space : String? = nil, @exposure_bias : Float32? = nil, @exposure_mode : String? = nil, @exposure_time : Float32? = nil, @flash_used : Bool? = nil, @focal_length : Float32? = nil, @height : Int32? = nil, @iso_speed : Int32? = nil, @lens : String? = nil, @location : FileImageMediaMetadataLocation? = nil, @max_aperture_value : Float32? = nil, @metering_mode : String? = nil, @rotation : Int32? = nil, @sensor : String? = nil, @subject_distance : Int32? = nil, @time : String? = nil, @white_balance : String? = nil, @width : Int32? = nil)
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
        aperture == o.aperture &&
        camera_make == o.camera_make &&
        camera_model == o.camera_model &&
        color_space == o.color_space &&
        exposure_bias == o.exposure_bias &&
        exposure_mode == o.exposure_mode &&
        exposure_time == o.exposure_time &&
        flash_used == o.flash_used &&
        focal_length == o.focal_length &&
        height == o.height &&
        iso_speed == o.iso_speed &&
        lens == o.lens &&
        location == o.location &&
        max_aperture_value == o.max_aperture_value &&
        metering_mode == o.metering_mode &&
        rotation == o.rotation &&
        sensor == o.sensor &&
        subject_distance == o.subject_distance &&
        time == o.time &&
        white_balance == o.white_balance &&
        width == o.width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aperture, camera_make, camera_model, color_space, exposure_bias, exposure_mode, exposure_time, flash_used, focal_length, height, iso_speed, lens, location, max_aperture_value, metering_mode, rotation, sensor, subject_distance, time, white_balance, width].hash
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
