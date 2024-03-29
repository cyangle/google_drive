#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./file_image_media_metadata_location"

module GoogleDrive
  # Additional metadata about image media, if available.
  class FileImageMediaMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The aperture used to create the photo (f-number).
    @[JSON::Field(key: "aperture", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aperture : Float32? = nil

    # The make of the camera used to create the photo.
    @[JSON::Field(key: "cameraMake", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter camera_make : String? = nil

    # The model of the camera used to create the photo.
    @[JSON::Field(key: "cameraModel", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter camera_model : String? = nil

    # The color space of the photo.
    @[JSON::Field(key: "colorSpace", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter color_space : String? = nil

    # The exposure bias of the photo (APEX value).
    @[JSON::Field(key: "exposureBias", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exposure_bias : Float32? = nil

    # The exposure mode used to create the photo.
    @[JSON::Field(key: "exposureMode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exposure_mode : String? = nil

    # The length of the exposure, in seconds.
    @[JSON::Field(key: "exposureTime", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exposure_time : Float32? = nil

    # Whether a flash was used to create the photo.
    @[JSON::Field(key: "flashUsed", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flash_used : Bool? = nil

    # The focal length used to create the photo, in millimeters.
    @[JSON::Field(key: "focalLength", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter focal_length : Float32? = nil

    # The height of the image in pixels.
    @[JSON::Field(key: "height", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter height : Int32? = nil

    # The ISO speed used to create the photo.
    @[JSON::Field(key: "isoSpeed", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter iso_speed : Int32? = nil

    # The lens used to create the photo.
    @[JSON::Field(key: "lens", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lens : String? = nil

    @[JSON::Field(key: "location", type: GoogleDrive::FileImageMediaMetadataLocation?, default: nil, required: false, nullable: false, emit_null: false)]
    getter location : GoogleDrive::FileImageMediaMetadataLocation? = nil

    # The smallest f-number of the lens at the focal length used to create the photo (APEX value).
    @[JSON::Field(key: "maxApertureValue", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter max_aperture_value : Float32? = nil

    # The metering mode used to create the photo.
    @[JSON::Field(key: "meteringMode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metering_mode : String? = nil

    # The number of clockwise 90 degree rotations applied from the image's original orientation.
    @[JSON::Field(key: "rotation", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rotation : Int32? = nil

    # The type of sensor used to create the photo.
    @[JSON::Field(key: "sensor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sensor : String? = nil

    # The distance to the subject of the photo, in meters.
    @[JSON::Field(key: "subjectDistance", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subject_distance : Int32? = nil

    # The date and time the photo was taken (EXIF DateTime).
    @[JSON::Field(key: "time", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter time : String? = nil

    # The white balance mode used to create the photo.
    @[JSON::Field(key: "whiteBalance", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter white_balance : String? = nil

    # The width of the image in pixels.
    @[JSON::Field(key: "width", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter width : Int32? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @aperture : Float32? = nil,
      @camera_make : String? = nil,
      @camera_model : String? = nil,
      @color_space : String? = nil,
      @exposure_bias : Float32? = nil,
      @exposure_mode : String? = nil,
      @exposure_time : Float32? = nil,
      @flash_used : Bool? = nil,
      @focal_length : Float32? = nil,
      @height : Int32? = nil,
      @iso_speed : Int32? = nil,
      @lens : String? = nil,
      @location : GoogleDrive::FileImageMediaMetadataLocation? = nil,
      @max_aperture_value : Float32? = nil,
      @metering_mode : String? = nil,
      @rotation : Int32? = nil,
      @sensor : String? = nil,
      @subject_distance : Int32? = nil,
      @time : String? = nil,
      @white_balance : String? = nil,
      @width : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_location = @location).nil?
        invalid_properties.concat(_location.list_invalid_properties_for("location")) if _location.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_location = @location).nil?
        return false if _location.is_a?(OpenApi::Validatable) && !_location.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aperture Object to be assigned
    def aperture=(new_value : Float32?)
      @aperture = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] camera_make Object to be assigned
    def camera_make=(new_value : String?)
      @camera_make = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] camera_model Object to be assigned
    def camera_model=(new_value : String?)
      @camera_model = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color_space Object to be assigned
    def color_space=(new_value : String?)
      @color_space = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exposure_bias Object to be assigned
    def exposure_bias=(new_value : Float32?)
      @exposure_bias = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exposure_mode Object to be assigned
    def exposure_mode=(new_value : String?)
      @exposure_mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exposure_time Object to be assigned
    def exposure_time=(new_value : Float32?)
      @exposure_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flash_used Object to be assigned
    def flash_used=(new_value : Bool?)
      @flash_used = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] focal_length Object to be assigned
    def focal_length=(new_value : Float32?)
      @focal_length = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] height Object to be assigned
    def height=(new_value : Int32?)
      @height = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_speed Object to be assigned
    def iso_speed=(new_value : Int32?)
      @iso_speed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lens Object to be assigned
    def lens=(new_value : String?)
      @lens = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(new_value : GoogleDrive::FileImageMediaMetadataLocation?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @location = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_aperture_value Object to be assigned
    def max_aperture_value=(new_value : Float32?)
      @max_aperture_value = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metering_mode Object to be assigned
    def metering_mode=(new_value : String?)
      @metering_mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rotation Object to be assigned
    def rotation=(new_value : Int32?)
      @rotation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sensor Object to be assigned
    def sensor=(new_value : String?)
      @sensor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subject_distance Object to be assigned
    def subject_distance=(new_value : Int32?)
      @subject_distance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time Object to be assigned
    def time=(new_value : String?)
      @time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] white_balance Object to be assigned
    def white_balance=(new_value : String?)
      @white_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] width Object to be assigned
    def width=(new_value : Int32?)
      @width = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@aperture, @camera_make, @camera_model, @color_space, @exposure_bias, @exposure_mode, @exposure_time, @flash_used, @focal_length, @height, @iso_speed, @lens, @location, @max_aperture_value, @metering_mode, @rotation, @sensor, @subject_distance, @time, @white_balance, @width)
  end
end
