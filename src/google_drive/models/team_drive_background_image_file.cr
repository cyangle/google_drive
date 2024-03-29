#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module GoogleDrive
  # An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.
  class TeamDriveBackgroundImageFile
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The ID of an image file in Drive to use for the background image.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    @[JSON::Field(key: "width", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter width : Float32? = nil

    # The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    @[JSON::Field(key: "xCoordinate", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter x_coordinate : Float32? = nil

    # The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    @[JSON::Field(key: "yCoordinate", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter y_coordinate : Float32? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] width Object to be assigned
    def width=(new_value : Float32?)
      @width = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] x_coordinate Object to be assigned
    def x_coordinate=(new_value : Float32?)
      @x_coordinate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] y_coordinate Object to be assigned
    def y_coordinate=(new_value : Float32?)
      @y_coordinate = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @width, @x_coordinate, @y_coordinate)
  end
end
