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
  class StartPageToken
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Identifies what kind of resource this is. Value: the fixed string \"drive#startPageToken\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#startPageToken", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#startPageToken"

    # The starting page token for listing changes.
    @[JSON::Field(key: "startPageToken", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter start_page_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @kind : String? = "drive#startPageToken",
      @start_page_token : String? = nil
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
    # @param [Object] kind Object to be assigned
    def kind=(kind : String?)
      if kind.nil?
        return @kind = nil
      end
      _kind = kind.not_nil!
      @kind = _kind
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_page_token Object to be assigned
    def start_page_token=(start_page_token : String?)
      if start_page_token.nil?
        return @start_page_token = nil
      end
      _start_page_token = start_page_token.not_nil!
      @start_page_token = _start_page_token
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@kind, @start_page_token)
  end
end
