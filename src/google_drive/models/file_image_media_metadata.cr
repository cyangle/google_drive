#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module GoogleDrive
  # Additional metadata about image media, if available.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FileImageMediaMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The aperture used to create the photo (f-number).
    @[JSON::Field(key: "aperture", type: Float32?, presence: true, ignore_serialize: aperture.nil? && !aperture_present?)]
    property aperture : Float32?

    @[JSON::Field(ignore: true)]
    property? aperture_present : Bool = false

    # The make of the camera used to create the photo.
    @[JSON::Field(key: "cameraMake", type: String?, presence: true, ignore_serialize: camera_make.nil? && !camera_make_present?)]
    property camera_make : String?

    @[JSON::Field(ignore: true)]
    property? camera_make_present : Bool = false

    # The model of the camera used to create the photo.
    @[JSON::Field(key: "cameraModel", type: String?, presence: true, ignore_serialize: camera_model.nil? && !camera_model_present?)]
    property camera_model : String?

    @[JSON::Field(ignore: true)]
    property? camera_model_present : Bool = false

    # The color space of the photo.
    @[JSON::Field(key: "colorSpace", type: String?, presence: true, ignore_serialize: color_space.nil? && !color_space_present?)]
    property color_space : String?

    @[JSON::Field(ignore: true)]
    property? color_space_present : Bool = false

    # The exposure bias of the photo (APEX value).
    @[JSON::Field(key: "exposureBias", type: Float32?, presence: true, ignore_serialize: exposure_bias.nil? && !exposure_bias_present?)]
    property exposure_bias : Float32?

    @[JSON::Field(ignore: true)]
    property? exposure_bias_present : Bool = false

    # The exposure mode used to create the photo.
    @[JSON::Field(key: "exposureMode", type: String?, presence: true, ignore_serialize: exposure_mode.nil? && !exposure_mode_present?)]
    property exposure_mode : String?

    @[JSON::Field(ignore: true)]
    property? exposure_mode_present : Bool = false

    # The length of the exposure, in seconds.
    @[JSON::Field(key: "exposureTime", type: Float32?, presence: true, ignore_serialize: exposure_time.nil? && !exposure_time_present?)]
    property exposure_time : Float32?

    @[JSON::Field(ignore: true)]
    property? exposure_time_present : Bool = false

    # Whether a flash was used to create the photo.
    @[JSON::Field(key: "flashUsed", type: Bool?, presence: true, ignore_serialize: flash_used.nil? && !flash_used_present?)]
    property flash_used : Bool?

    @[JSON::Field(ignore: true)]
    property? flash_used_present : Bool = false

    # The focal length used to create the photo, in millimeters.
    @[JSON::Field(key: "focalLength", type: Float32?, presence: true, ignore_serialize: focal_length.nil? && !focal_length_present?)]
    property focal_length : Float32?

    @[JSON::Field(ignore: true)]
    property? focal_length_present : Bool = false

    # The height of the image in pixels.
    @[JSON::Field(key: "height", type: Int32?, presence: true, ignore_serialize: height.nil? && !height_present?)]
    property height : Int32?

    @[JSON::Field(ignore: true)]
    property? height_present : Bool = false

    # The ISO speed used to create the photo.
    @[JSON::Field(key: "isoSpeed", type: Int32?, presence: true, ignore_serialize: iso_speed.nil? && !iso_speed_present?)]
    property iso_speed : Int32?

    @[JSON::Field(ignore: true)]
    property? iso_speed_present : Bool = false

    # The lens used to create the photo.
    @[JSON::Field(key: "lens", type: String?, presence: true, ignore_serialize: lens.nil? && !lens_present?)]
    property lens : String?

    @[JSON::Field(ignore: true)]
    property? lens_present : Bool = false

    @[JSON::Field(key: "location", type: FileImageMediaMetadataLocation?, presence: true, ignore_serialize: location.nil? && !location_present?)]
    property location : FileImageMediaMetadataLocation?

    @[JSON::Field(ignore: true)]
    property? location_present : Bool = false

    # The smallest f-number of the lens at the focal length used to create the photo (APEX value).
    @[JSON::Field(key: "maxApertureValue", type: Float32?, presence: true, ignore_serialize: max_aperture_value.nil? && !max_aperture_value_present?)]
    property max_aperture_value : Float32?

    @[JSON::Field(ignore: true)]
    property? max_aperture_value_present : Bool = false

    # The metering mode used to create the photo.
    @[JSON::Field(key: "meteringMode", type: String?, presence: true, ignore_serialize: metering_mode.nil? && !metering_mode_present?)]
    property metering_mode : String?

    @[JSON::Field(ignore: true)]
    property? metering_mode_present : Bool = false

    # The number of clockwise 90 degree rotations applied from the image's original orientation.
    @[JSON::Field(key: "rotation", type: Int32?, presence: true, ignore_serialize: rotation.nil? && !rotation_present?)]
    property rotation : Int32?

    @[JSON::Field(ignore: true)]
    property? rotation_present : Bool = false

    # The type of sensor used to create the photo.
    @[JSON::Field(key: "sensor", type: String?, presence: true, ignore_serialize: sensor.nil? && !sensor_present?)]
    property sensor : String?

    @[JSON::Field(ignore: true)]
    property? sensor_present : Bool = false

    # The distance to the subject of the photo, in meters.
    @[JSON::Field(key: "subjectDistance", type: Int32?, presence: true, ignore_serialize: subject_distance.nil? && !subject_distance_present?)]
    property subject_distance : Int32?

    @[JSON::Field(ignore: true)]
    property? subject_distance_present : Bool = false

    # The date and time the photo was taken (EXIF DateTime).
    @[JSON::Field(key: "time", type: String?, presence: true, ignore_serialize: time.nil? && !time_present?)]
    property time : String?

    @[JSON::Field(ignore: true)]
    property? time_present : Bool = false

    # The white balance mode used to create the photo.
    @[JSON::Field(key: "whiteBalance", type: String?, presence: true, ignore_serialize: white_balance.nil? && !white_balance_present?)]
    property white_balance : String?

    @[JSON::Field(ignore: true)]
    property? white_balance_present : Bool = false

    # The width of the image in pixels.
    @[JSON::Field(key: "width", type: Int32?, presence: true, ignore_serialize: width.nil? && !width_present?)]
    property width : Int32?

    @[JSON::Field(ignore: true)]
    property? width_present : Bool = false

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
  end
end
