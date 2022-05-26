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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        app_installed == o.app_installed &&
        can_create_drives == o.can_create_drives &&
        can_create_team_drives == o.can_create_team_drives &&
        drive_themes == o.drive_themes &&
        export_formats == o.export_formats &&
        folder_color_palette == o.folder_color_palette &&
        import_formats == o.import_formats &&
        kind == o.kind &&
        max_import_sizes == o.max_import_sizes &&
        max_upload_size == o.max_upload_size &&
        storage_quota == o.storage_quota &&
        team_drive_themes == o.team_drive_themes &&
        user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [app_installed, can_create_drives, can_create_team_drives, drive_themes, export_formats, folder_color_palette, import_formats, kind, max_import_sizes, max_upload_size, storage_quota, team_drive_themes, user].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = GoogleDrive.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
