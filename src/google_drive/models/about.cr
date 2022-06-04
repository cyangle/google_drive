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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class About
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # Whether the user has installed the requesting app.
    @[JSON::Field(key: "appInstalled", type: Bool?, presence: true, ignore_serialize: app_installed.nil? && !app_installed_present?)]
    property app_installed : Bool?

    @[JSON::Field(ignore: true)]
    property? app_installed_present : Bool = false

    # Whether the user can create shared drives.
    @[JSON::Field(key: "canCreateDrives", type: Bool?, presence: true, ignore_serialize: can_create_drives.nil? && !can_create_drives_present?)]
    property can_create_drives : Bool?

    @[JSON::Field(ignore: true)]
    property? can_create_drives_present : Bool = false

    # Deprecated - use canCreateDrives instead.
    @[JSON::Field(key: "canCreateTeamDrives", type: Bool?, presence: true, ignore_serialize: can_create_team_drives.nil? && !can_create_team_drives_present?)]
    property can_create_team_drives : Bool?

    @[JSON::Field(ignore: true)]
    property? can_create_team_drives_present : Bool = false

    # A list of themes that are supported for shared drives.
    @[JSON::Field(key: "driveThemes", type: Array(AboutDriveThemesInner)?, presence: true, ignore_serialize: drive_themes.nil? && !drive_themes_present?)]
    property drive_themes : Array(AboutDriveThemesInner)?

    @[JSON::Field(ignore: true)]
    property? drive_themes_present : Bool = false

    # A map of source MIME type to possible targets for all supported exports.
    @[JSON::Field(key: "exportFormats", type: Hash(String, Array(String))?, presence: true, ignore_serialize: export_formats.nil? && !export_formats_present?)]
    property export_formats : Hash(String, Array(String))?

    @[JSON::Field(ignore: true)]
    property? export_formats_present : Bool = false

    # The currently supported folder colors as RGB hex strings.
    @[JSON::Field(key: "folderColorPalette", type: Array(String)?, presence: true, ignore_serialize: folder_color_palette.nil? && !folder_color_palette_present?)]
    property folder_color_palette : Array(String)?

    @[JSON::Field(ignore: true)]
    property? folder_color_palette_present : Bool = false

    # A map of source MIME type to possible targets for all supported imports.
    @[JSON::Field(key: "importFormats", type: Hash(String, Array(String))?, presence: true, ignore_serialize: import_formats.nil? && !import_formats_present?)]
    property import_formats : Hash(String, Array(String))?

    @[JSON::Field(ignore: true)]
    property? import_formats_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#about\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#about", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # A map of maximum import sizes by MIME type, in bytes.
    @[JSON::Field(key: "maxImportSizes", type: Hash(String, String)?, presence: true, ignore_serialize: max_import_sizes.nil? && !max_import_sizes_present?)]
    property max_import_sizes : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? max_import_sizes_present : Bool = false

    # The maximum upload size in bytes.
    @[JSON::Field(key: "maxUploadSize", type: String?, presence: true, ignore_serialize: max_upload_size.nil? && !max_upload_size_present?)]
    property max_upload_size : String?

    @[JSON::Field(ignore: true)]
    property? max_upload_size_present : Bool = false

    @[JSON::Field(key: "storageQuota", type: AboutStorageQuota?, presence: true, ignore_serialize: storage_quota.nil? && !storage_quota_present?)]
    property storage_quota : AboutStorageQuota?

    @[JSON::Field(ignore: true)]
    property? storage_quota_present : Bool = false

    # Deprecated - use driveThemes instead.
    @[JSON::Field(key: "teamDriveThemes", type: Array(AboutTeamDriveThemesInner)?, presence: true, ignore_serialize: team_drive_themes.nil? && !team_drive_themes_present?)]
    property team_drive_themes : Array(AboutTeamDriveThemesInner)?

    @[JSON::Field(ignore: true)]
    property? team_drive_themes_present : Bool = false

    @[JSON::Field(key: "user", type: User?, presence: true, ignore_serialize: user.nil? && !user_present?)]
    property user : User?

    @[JSON::Field(ignore: true)]
    property? user_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @app_installed : Bool? = nil, @can_create_drives : Bool? = nil, @can_create_team_drives : Bool? = nil, @drive_themes : Array(AboutDriveThemesInner)? = nil, @export_formats : Hash(String, Array(String))? = nil, @folder_color_palette : Array(String)? = nil, @import_formats : Hash(String, Array(String))? = nil, @kind : String? = "drive#about", @max_import_sizes : Hash(String, String)? = nil, @max_upload_size : String? = nil, @storage_quota : AboutStorageQuota? = nil, @team_drive_themes : Array(AboutTeamDriveThemesInner)? = nil, @user : User? = nil)
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
    def_equals_and_hash(@app_installed, @can_create_drives, @can_create_team_drives, @drive_themes, @export_formats, @folder_color_palette, @import_formats, @kind, @max_import_sizes, @max_upload_size, @storage_quota, @team_drive_themes, @user)
  end
end
