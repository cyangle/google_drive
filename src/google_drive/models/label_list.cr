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
  # A list of labels.
  class LabelList
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # This is always drive#labelList
    @[JSON::Field(key: "kind", type: String?, default: "drive#labelList", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#labelList"

    # The list of labels.
    @[JSON::Field(key: "labels", type: Array(GoogleDrive::Label)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter labels : Array(GoogleDrive::Label)? = nil

    # The page token for the next page of labels. This field will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    @[JSON::Field(key: "nextPageToken", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter next_page_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @kind : String? = "drive#labelList",
      @labels : Array(GoogleDrive::Label)? = nil,
      @next_page_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_labels = @labels).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "labels", container: _labels)) if _labels.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_labels = @labels).nil?
        return false if _labels.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _labels)
      end

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
    # @param [Object] labels Object to be assigned
    def labels=(labels : Array(GoogleDrive::Label)?)
      if labels.nil?
        return @labels = nil
      end
      _labels = labels.not_nil!
      OpenApi::ContainerValidator.validate(container: _labels) if _labels.is_a?(Array)
      @labels = _labels
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_page_token Object to be assigned
    def next_page_token=(next_page_token : String?)
      if next_page_token.nil?
        return @next_page_token = nil
      end
      _next_page_token = next_page_token.not_nil!
      @next_page_token = _next_page_token
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@kind, @labels, @next_page_token)
  end
end
