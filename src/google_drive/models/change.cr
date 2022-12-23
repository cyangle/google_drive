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
  class Change
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The type of the change. Possible values are file and drive.
    @[JSON::Field(key: "changeType", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter change_type : String? = nil

    @[JSON::Field(key: "drive", type: GoogleDrive::Drive?, default: nil, required: false, nullable: false, emit_null: false)]
    getter drive : GoogleDrive::Drive? = nil

    # The ID of the shared drive associated with this change.
    @[JSON::Field(key: "driveId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter drive_id : String? = nil

    @[JSON::Field(key: "file", type: GoogleDrive::File?, default: nil, required: false, nullable: false, emit_null: false)]
    getter file : GoogleDrive::File? = nil

    # The ID of the file which has changed.
    @[JSON::Field(key: "fileId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter file_id : String? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#change\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#change", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#change"

    # Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.
    @[JSON::Field(key: "removed", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter removed : Bool? = nil

    @[JSON::Field(key: "teamDrive", type: GoogleDrive::TeamDrive?, default: nil, required: false, nullable: false, emit_null: false)]
    getter team_drive : GoogleDrive::TeamDrive? = nil

    # Deprecated - use driveId instead.
    @[JSON::Field(key: "teamDriveId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter team_drive_id : String? = nil

    # The time of this change (RFC 3339 date-time).
    @[JSON::Field(key: "time", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter time : Time? = nil

    # Deprecated - use changeType instead.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @change_type : String? = nil,
      @drive : GoogleDrive::Drive? = nil,
      @drive_id : String? = nil,
      @file : GoogleDrive::File? = nil,
      @file_id : String? = nil,
      @kind : String? = "drive#change",
      @removed : Bool? = nil,
      @team_drive : GoogleDrive::TeamDrive? = nil,
      @team_drive_id : String? = nil,
      @time : Time? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_drive = @drive).nil?
        invalid_properties.concat(_drive.list_invalid_properties_for("drive")) if _drive.is_a?(OpenApi::Validatable)
      end

      unless (_file = @file).nil?
        invalid_properties.concat(_file.list_invalid_properties_for("file")) if _file.is_a?(OpenApi::Validatable)
      end

      unless (_team_drive = @team_drive).nil?
        invalid_properties.concat(_team_drive.list_invalid_properties_for("team_drive")) if _team_drive.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_drive = @drive).nil?
        return false if _drive.is_a?(OpenApi::Validatable) && !_drive.valid?
      end

      unless (_file = @file).nil?
        return false if _file.is_a?(OpenApi::Validatable) && !_file.valid?
      end

      unless (_team_drive = @team_drive).nil?
        return false if _team_drive.is_a?(OpenApi::Validatable) && !_team_drive.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] change_type Object to be assigned
    def change_type=(change_type : String?)
      if change_type.nil?
        return @change_type = nil
      end
      _change_type = change_type.not_nil!
      @change_type = _change_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] drive Object to be assigned
    def drive=(drive : GoogleDrive::Drive?)
      if drive.nil?
        return @drive = nil
      end
      _drive = drive.not_nil!
      _drive.validate if _drive.is_a?(OpenApi::Validatable)
      @drive = _drive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] drive_id Object to be assigned
    def drive_id=(drive_id : String?)
      if drive_id.nil?
        return @drive_id = nil
      end
      _drive_id = drive_id.not_nil!
      @drive_id = _drive_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file Object to be assigned
    def file=(file : GoogleDrive::File?)
      if file.nil?
        return @file = nil
      end
      _file = file.not_nil!
      _file.validate if _file.is_a?(OpenApi::Validatable)
      @file = _file
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file_id Object to be assigned
    def file_id=(file_id : String?)
      if file_id.nil?
        return @file_id = nil
      end
      _file_id = file_id.not_nil!
      @file_id = _file_id
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
    # @param [Object] removed Object to be assigned
    def removed=(removed : Bool?)
      if removed.nil?
        return @removed = nil
      end
      _removed = removed.not_nil!
      @removed = _removed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] team_drive Object to be assigned
    def team_drive=(team_drive : GoogleDrive::TeamDrive?)
      if team_drive.nil?
        return @team_drive = nil
      end
      _team_drive = team_drive.not_nil!
      _team_drive.validate if _team_drive.is_a?(OpenApi::Validatable)
      @team_drive = _team_drive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] team_drive_id Object to be assigned
    def team_drive_id=(team_drive_id : String?)
      if team_drive_id.nil?
        return @team_drive_id = nil
      end
      _team_drive_id = team_drive_id.not_nil!
      @team_drive_id = _team_drive_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time Object to be assigned
    def time=(time : Time?)
      if time.nil?
        return @time = nil
      end
      _time = time.not_nil!
      @time = _time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      @_type = __type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@change_type, @drive, @drive_id, @file, @file_id, @kind, @removed, @team_drive, @team_drive_id, @time, @_type)
  end
end
