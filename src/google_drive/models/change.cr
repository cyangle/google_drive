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
  # A change to a file or shared drive.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Change
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The type of the change. Possible values are file and drive.
    @[JSON::Field(key: "changeType", type: String?, presence: true, ignore_serialize: change_type.nil? && !change_type_present?)]
    property change_type : String?

    @[JSON::Field(ignore: true)]
    property? change_type_present : Bool = false

    @[JSON::Field(key: "drive", type: Drive?, presence: true, ignore_serialize: drive.nil? && !drive_present?)]
    property drive : Drive?

    @[JSON::Field(ignore: true)]
    property? drive_present : Bool = false

    # The ID of the shared drive associated with this change.
    @[JSON::Field(key: "driveId", type: String?, presence: true, ignore_serialize: drive_id.nil? && !drive_id_present?)]
    property drive_id : String?

    @[JSON::Field(ignore: true)]
    property? drive_id_present : Bool = false

    @[JSON::Field(key: "file", type: File?, presence: true, ignore_serialize: file.nil? && !file_present?)]
    property file : File?

    @[JSON::Field(ignore: true)]
    property? file_present : Bool = false

    # The ID of the file which has changed.
    @[JSON::Field(key: "fileId", type: String?, presence: true, ignore_serialize: file_id.nil? && !file_id_present?)]
    property file_id : String?

    @[JSON::Field(ignore: true)]
    property? file_id_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#change\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#change", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.
    @[JSON::Field(key: "removed", type: Bool?, presence: true, ignore_serialize: removed.nil? && !removed_present?)]
    property removed : Bool?

    @[JSON::Field(ignore: true)]
    property? removed_present : Bool = false

    @[JSON::Field(key: "teamDrive", type: TeamDrive?, presence: true, ignore_serialize: team_drive.nil? && !team_drive_present?)]
    property team_drive : TeamDrive?

    @[JSON::Field(ignore: true)]
    property? team_drive_present : Bool = false

    # Deprecated - use driveId instead.
    @[JSON::Field(key: "teamDriveId", type: String?, presence: true, ignore_serialize: team_drive_id.nil? && !team_drive_id_present?)]
    property team_drive_id : String?

    @[JSON::Field(ignore: true)]
    property? team_drive_id_present : Bool = false

    # The time of this change (RFC 3339 date-time).
    @[JSON::Field(key: "time", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time.nil? && !time_present?)]
    property time : Time?

    @[JSON::Field(ignore: true)]
    property? time_present : Bool = false

    # Deprecated - use changeType instead.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    property _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @change_type : String? = nil, @drive : Drive? = nil, @drive_id : String? = nil, @file : File? = nil, @file_id : String? = nil, @kind : String? = "drive#change", @removed : Bool? = nil, @team_drive : TeamDrive? = nil, @team_drive_id : String? = nil, @time : Time? = nil, @_type : String? = nil)
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
    def_equals_and_hash(@change_type, @drive, @drive_id, @file, @file_id, @kind, @removed, @team_drive, @team_drive_id, @time, @_type)
  end
end
