#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./user"

module GoogleDrive
  # The metadata for a revision to a file.
  class Revision
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Links for exporting Docs Editors files to specific formats.
    @[JSON::Field(key: "exportLinks", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter export_links : Hash(String, String)? = nil

    # The ID of the revision.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "keepForever", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter keep_forever : Bool? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#revision\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#revision", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#revision"

    @[JSON::Field(key: "lastModifyingUser", type: GoogleDrive::User?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_modifying_user : GoogleDrive::User? = nil

    # The MD5 checksum of the revision's content. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "md5Checksum", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter md5_checksum : String? = nil

    # The MIME type of the revision.
    @[JSON::Field(key: "mimeType", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mime_type : String? = nil

    # The last time the revision was modified (RFC 3339 date-time).
    @[JSON::Field(key: "modifiedTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter modified_time : Time? = nil

    # The original filename used to create this revision. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "originalFilename", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter original_filename : String? = nil

    # Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "publishAuto", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter publish_auto : Bool? = nil

    # Whether this revision is published. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "published", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter published : Bool? = nil

    # A link to the published revision. This is only populated for Google Sites files.
    @[JSON::Field(key: "publishedLink", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter published_link : String? = nil

    # Whether this revision is published outside the domain. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "publishedOutsideDomain", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter published_outside_domain : Bool? = nil

    # The size of the revision's content in bytes. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "size", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter size : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @export_links : Hash(String, String)? = nil,
      @id : String? = nil,
      @keep_forever : Bool? = nil,
      @kind : String? = "drive#revision",
      @last_modifying_user : GoogleDrive::User? = nil,
      @md5_checksum : String? = nil,
      @mime_type : String? = nil,
      @modified_time : Time? = nil,
      @original_filename : String? = nil,
      @publish_auto : Bool? = nil,
      @published : Bool? = nil,
      @published_link : String? = nil,
      @published_outside_domain : Bool? = nil,
      @size : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_last_modifying_user = @last_modifying_user).nil?
        invalid_properties.concat(_last_modifying_user.list_invalid_properties_for("last_modifying_user")) if _last_modifying_user.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_last_modifying_user = @last_modifying_user).nil?
        return false if _last_modifying_user.is_a?(OpenApi::Validatable) && !_last_modifying_user.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_links Object to be assigned
    def export_links=(new_value : Hash(String, String)?)
      @export_links = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] keep_forever Object to be assigned
    def keep_forever=(new_value : Bool?)
      @keep_forever = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_modifying_user Object to be assigned
    def last_modifying_user=(new_value : GoogleDrive::User?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @last_modifying_user = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] md5_checksum Object to be assigned
    def md5_checksum=(new_value : String?)
      @md5_checksum = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mime_type Object to be assigned
    def mime_type=(new_value : String?)
      @mime_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] modified_time Object to be assigned
    def modified_time=(new_value : Time?)
      @modified_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_filename Object to be assigned
    def original_filename=(new_value : String?)
      @original_filename = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] publish_auto Object to be assigned
    def publish_auto=(new_value : Bool?)
      @publish_auto = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] published Object to be assigned
    def published=(new_value : Bool?)
      @published = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] published_link Object to be assigned
    def published_link=(new_value : String?)
      @published_link = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] published_outside_domain Object to be assigned
    def published_outside_domain=(new_value : Bool?)
      @published_outside_domain = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(new_value : String?)
      @size = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@export_links, @id, @keep_forever, @kind, @last_modifying_user, @md5_checksum, @mime_type, @modified_time, @original_filename, @publish_auto, @published, @published_link, @published_outside_domain, @size)
  end
end
