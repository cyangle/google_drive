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
  # The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.
  class CommentQuotedFileContent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The MIME type of the quoted content.
    @[JSON::Field(key: "mimeType", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mime_type : String? = nil

    # The quoted content itself. This is interpreted as plain text if set through the API.
    @[JSON::Field(key: "value", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter value : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @mime_type : String? = nil,
      @value : String? = nil
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
    # @param [Object] mime_type Object to be assigned
    def mime_type=(new_value : String?)
      @mime_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(new_value : String?)
      @value = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@mime_type, @value)
  end
end
