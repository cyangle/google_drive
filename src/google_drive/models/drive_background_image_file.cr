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
  # An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on drive.drives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class DriveBackgroundImageFile
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The ID of an image file in Google Drive to use for the background image.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    @[JSON::Field(key: "width", type: Float32?, presence: true, ignore_serialize: width.nil? && !width_present?)]
    property width : Float32?

    @[JSON::Field(ignore: true)]
    property? width_present : Bool = false

    # The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    @[JSON::Field(key: "xCoordinate", type: Float32?, presence: true, ignore_serialize: x_coordinate.nil? && !x_coordinate_present?)]
    property x_coordinate : Float32?

    @[JSON::Field(ignore: true)]
    property? x_coordinate_present : Bool = false

    # The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    @[JSON::Field(key: "yCoordinate", type: Float32?, presence: true, ignore_serialize: y_coordinate.nil? && !y_coordinate_present?)]
    property y_coordinate : Float32?

    @[JSON::Field(ignore: true)]
    property? y_coordinate_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : String? = nil,
      @width : Float32? = nil,
      @x_coordinate : Float32? = nil,
      @y_coordinate : Float32? = nil
    )
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @id_present, @width, @width_present, @x_coordinate, @x_coordinate_present, @y_coordinate, @y_coordinate_present)
  end
end
