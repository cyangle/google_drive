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
  # The user's storage quota limits and usage. All fields are measured in bytes.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AboutStorageQuota
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The usage limit, if applicable. This will not be present if the user has unlimited storage.
    @[JSON::Field(key: "limit", type: String?, presence: true, ignore_serialize: limit.nil? && !limit_present?)]
    property limit : String?

    @[JSON::Field(ignore: true)]
    property? limit_present : Bool = false

    # The total usage across all services.
    @[JSON::Field(key: "usage", type: String?, presence: true, ignore_serialize: usage.nil? && !usage_present?)]
    property usage : String?

    @[JSON::Field(ignore: true)]
    property? usage_present : Bool = false

    # The usage by all files in Google Drive.
    @[JSON::Field(key: "usageInDrive", type: String?, presence: true, ignore_serialize: usage_in_drive.nil? && !usage_in_drive_present?)]
    property usage_in_drive : String?

    @[JSON::Field(ignore: true)]
    property? usage_in_drive_present : Bool = false

    # The usage by trashed files in Google Drive.
    @[JSON::Field(key: "usageInDriveTrash", type: String?, presence: true, ignore_serialize: usage_in_drive_trash.nil? && !usage_in_drive_trash_present?)]
    property usage_in_drive_trash : String?

    @[JSON::Field(ignore: true)]
    property? usage_in_drive_trash_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @limit : String? = nil,
      @usage : String? = nil,
      @usage_in_drive : String? = nil,
      @usage_in_drive_trash : String? = nil
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
    def_equals_and_hash(@limit, @limit_present, @usage, @usage_present, @usage_in_drive, @usage_in_drive_present, @usage_in_drive_trash, @usage_in_drive_trash_present)
  end
end
