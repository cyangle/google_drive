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
  # Information about the user, the user's Drive, and system capabilities.
  class About
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the user has installed the requesting app.
    @[JSON::Field(key: "appInstalled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter app_installed : Bool? = nil

    # Whether the user can create shared drives.
    @[JSON::Field(key: "canCreateDrives", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_create_drives : Bool? = nil

    # Deprecated - use canCreateDrives instead.
    @[JSON::Field(key: "canCreateTeamDrives", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_create_team_drives : Bool? = nil

    # A list of themes that are supported for shared drives.
    @[JSON::Field(key: "driveThemes", type: Array(GoogleDrive::AboutDriveThemesInner)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter drive_themes : Array(GoogleDrive::AboutDriveThemesInner)? = nil

    # A map of source MIME type to possible targets for all supported exports.
    @[JSON::Field(key: "exportFormats", type: Hash(String, Array(String))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter export_formats : Hash(String, Array(String))? = nil

    # The currently supported folder colors as RGB hex strings.
    @[JSON::Field(key: "folderColorPalette", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter folder_color_palette : Array(String)? = nil

    # A map of source MIME type to possible targets for all supported imports.
    @[JSON::Field(key: "importFormats", type: Hash(String, Array(String))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter import_formats : Hash(String, Array(String))? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#about\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#about", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#about"

    # A map of maximum import sizes by MIME type, in bytes.
    @[JSON::Field(key: "maxImportSizes", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter max_import_sizes : Hash(String, String)? = nil

    # The maximum upload size in bytes.
    @[JSON::Field(key: "maxUploadSize", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter max_upload_size : String? = nil

    @[JSON::Field(key: "storageQuota", type: GoogleDrive::AboutStorageQuota?, default: nil, required: false, nullable: false, emit_null: false)]
    getter storage_quota : GoogleDrive::AboutStorageQuota? = nil

    # Deprecated - use driveThemes instead.
    @[JSON::Field(key: "teamDriveThemes", type: Array(GoogleDrive::AboutTeamDriveThemesInner)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter team_drive_themes : Array(GoogleDrive::AboutTeamDriveThemesInner)? = nil

    @[JSON::Field(key: "user", type: GoogleDrive::User?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user : GoogleDrive::User? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @app_installed : Bool? = nil,
      @can_create_drives : Bool? = nil,
      @can_create_team_drives : Bool? = nil,
      @drive_themes : Array(GoogleDrive::AboutDriveThemesInner)? = nil,
      @export_formats : Hash(String, Array(String))? = nil,
      @folder_color_palette : Array(String)? = nil,
      @import_formats : Hash(String, Array(String))? = nil,
      @kind : String? = "drive#about",
      @max_import_sizes : Hash(String, String)? = nil,
      @max_upload_size : String? = nil,
      @storage_quota : GoogleDrive::AboutStorageQuota? = nil,
      @team_drive_themes : Array(GoogleDrive::AboutTeamDriveThemesInner)? = nil,
      @user : GoogleDrive::User? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_drive_themes = @drive_themes).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "drive_themes", container: _drive_themes)) if _drive_themes.is_a?(Array)
      end

      unless (_storage_quota = @storage_quota).nil?
        invalid_properties.concat(_storage_quota.list_invalid_properties_for("storage_quota")) if _storage_quota.is_a?(OpenApi::Validatable)
      end
      unless (_team_drive_themes = @team_drive_themes).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "team_drive_themes", container: _team_drive_themes)) if _team_drive_themes.is_a?(Array)
      end
      unless (_user = @user).nil?
        invalid_properties.concat(_user.list_invalid_properties_for("user")) if _user.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_drive_themes = @drive_themes).nil?
        return false if _drive_themes.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _drive_themes)
      end

      unless (_storage_quota = @storage_quota).nil?
        return false if _storage_quota.is_a?(OpenApi::Validatable) && !_storage_quota.valid?
      end

      unless (_team_drive_themes = @team_drive_themes).nil?
        return false if _team_drive_themes.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _team_drive_themes)
      end

      unless (_user = @user).nil?
        return false if _user.is_a?(OpenApi::Validatable) && !_user.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] app_installed Object to be assigned
    def app_installed=(new_value : Bool?)
      @app_installed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_create_drives Object to be assigned
    def can_create_drives=(new_value : Bool?)
      @can_create_drives = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_create_team_drives Object to be assigned
    def can_create_team_drives=(new_value : Bool?)
      @can_create_team_drives = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] drive_themes Object to be assigned
    def drive_themes=(new_value : Array(GoogleDrive::AboutDriveThemesInner)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @drive_themes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_formats Object to be assigned
    def export_formats=(new_value : Hash(String, Array(String))?)
      @export_formats = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] folder_color_palette Object to be assigned
    def folder_color_palette=(new_value : Array(String)?)
      @folder_color_palette = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] import_formats Object to be assigned
    def import_formats=(new_value : Hash(String, Array(String))?)
      @import_formats = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_import_sizes Object to be assigned
    def max_import_sizes=(new_value : Hash(String, String)?)
      @max_import_sizes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_upload_size Object to be assigned
    def max_upload_size=(new_value : String?)
      @max_upload_size = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] storage_quota Object to be assigned
    def storage_quota=(new_value : GoogleDrive::AboutStorageQuota?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @storage_quota = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] team_drive_themes Object to be assigned
    def team_drive_themes=(new_value : Array(GoogleDrive::AboutTeamDriveThemesInner)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @team_drive_themes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user Object to be assigned
    def user=(new_value : GoogleDrive::User?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @user = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@app_installed, @can_create_drives, @can_create_team_drives, @drive_themes, @export_formats, @folder_color_palette, @import_formats, @kind, @max_import_sizes, @max_upload_size, @storage_quota, @team_drive_themes, @user)
  end
end
