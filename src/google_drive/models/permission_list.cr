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
  # A list of permissions for a file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PermissionList
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # Identifies what kind of resource this is. Value: the fixed string \"drive#permissionList\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#permissionList", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    @[JSON::Field(key: "nextPageToken", type: String?, presence: true, ignore_serialize: next_page_token.nil? && !next_page_token_present?)]
    property next_page_token : String?

    @[JSON::Field(ignore: true)]
    property? next_page_token_present : Bool = false

    # The list of permissions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    @[JSON::Field(key: "permissions", type: Array(Permission)?, presence: true, ignore_serialize: permissions.nil? && !permissions_present?)]
    property permissions : Array(Permission)?

    @[JSON::Field(ignore: true)]
    property? permissions_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @kind : String? = "drive#permissionList", @next_page_token : String? = nil, @permissions : Array(Permission)? = nil)
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
    def_equals_and_hash(@kind, @next_page_token, @permissions)
  end
end
