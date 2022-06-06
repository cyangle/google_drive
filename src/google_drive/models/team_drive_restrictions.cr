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
  # A set of restrictions that apply to this Team Drive or items inside this Team Drive.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TeamDriveRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether administrative privileges on this Team Drive are required to modify restrictions.
    @[JSON::Field(key: "adminManagedRestrictions", type: Bool?, presence: true, ignore_serialize: admin_managed_restrictions.nil? && !admin_managed_restrictions_present?)]
    property admin_managed_restrictions : Bool?

    @[JSON::Field(ignore: true)]
    property? admin_managed_restrictions_present : Bool = false

    # Whether the options to copy, print, or download files inside this Team Drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this Team Drive.
    @[JSON::Field(key: "copyRequiresWriterPermission", type: Bool?, presence: true, ignore_serialize: copy_requires_writer_permission.nil? && !copy_requires_writer_permission_present?)]
    property copy_requires_writer_permission : Bool?

    @[JSON::Field(ignore: true)]
    property? copy_requires_writer_permission_present : Bool = false

    # Whether access to this Team Drive and items inside this Team Drive is restricted to users of the domain to which this Team Drive belongs. This restriction may be overridden by other sharing policies controlled outside of this Team Drive.
    @[JSON::Field(key: "domainUsersOnly", type: Bool?, presence: true, ignore_serialize: domain_users_only.nil? && !domain_users_only_present?)]
    property domain_users_only : Bool?

    @[JSON::Field(ignore: true)]
    property? domain_users_only_present : Bool = false

    # Whether access to items inside this Team Drive is restricted to members of this Team Drive.
    @[JSON::Field(key: "teamMembersOnly", type: Bool?, presence: true, ignore_serialize: team_members_only.nil? && !team_members_only_present?)]
    property team_members_only : Bool?

    @[JSON::Field(ignore: true)]
    property? team_members_only_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @admin_managed_restrictions : Bool? = nil,
      @copy_requires_writer_permission : Bool? = nil,
      @domain_users_only : Bool? = nil,
      @team_members_only : Bool? = nil
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
    def_equals_and_hash(@admin_managed_restrictions, @admin_managed_restrictions_present, @copy_requires_writer_permission, @copy_requires_writer_permission_present, @domain_users_only, @domain_users_only_present, @team_members_only, @team_members_only_present)
  end
end
