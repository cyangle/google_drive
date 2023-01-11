#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./drive"

module GoogleDrive
  # A list of shared drives.
  class DriveList
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    @[JSON::Field(key: "drives", type: Array(GoogleDrive::Drive)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter drives : Array(GoogleDrive::Drive)? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#driveList\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#driveList", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#driveList"

    # The page token for the next page of shared drives. This will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    @[JSON::Field(key: "nextPageToken", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter next_page_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @drives : Array(GoogleDrive::Drive)? = nil,
      @kind : String? = "drive#driveList",
      @next_page_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_drives = @drives).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "drives", container: _drives)) if _drives.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_drives = @drives).nil?
        return false if _drives.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _drives)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] drives Object to be assigned
    def drives=(new_value : Array(GoogleDrive::Drive)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @drives = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_page_token Object to be assigned
    def next_page_token=(new_value : String?)
      @next_page_token = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@drives, @kind, @next_page_token)
  end
end
