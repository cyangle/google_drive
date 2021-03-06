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
  # The metadata for a revision to a file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Revision
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Links for exporting Docs Editors files to specific formats.
    @[JSON::Field(key: "exportLinks", type: Hash(String, String)?, presence: true, ignore_serialize: export_links.nil? && !export_links_present?)]
    property export_links : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? export_links_present : Bool = false

    # The ID of the revision.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "keepForever", type: Bool?, presence: true, ignore_serialize: keep_forever.nil? && !keep_forever_present?)]
    property keep_forever : Bool?

    @[JSON::Field(ignore: true)]
    property? keep_forever_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#revision\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#revision", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "drive#revision"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    @[JSON::Field(key: "lastModifyingUser", type: User?, presence: true, ignore_serialize: last_modifying_user.nil? && !last_modifying_user_present?)]
    property last_modifying_user : User?

    @[JSON::Field(ignore: true)]
    property? last_modifying_user_present : Bool = false

    # The MD5 checksum of the revision's content. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "md5Checksum", type: String?, presence: true, ignore_serialize: md5_checksum.nil? && !md5_checksum_present?)]
    property md5_checksum : String?

    @[JSON::Field(ignore: true)]
    property? md5_checksum_present : Bool = false

    # The MIME type of the revision.
    @[JSON::Field(key: "mimeType", type: String?, presence: true, ignore_serialize: mime_type.nil? && !mime_type_present?)]
    property mime_type : String?

    @[JSON::Field(ignore: true)]
    property? mime_type_present : Bool = false

    # The last time the revision was modified (RFC 3339 date-time).
    @[JSON::Field(key: "modifiedTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: modified_time.nil? && !modified_time_present?)]
    property modified_time : Time?

    @[JSON::Field(ignore: true)]
    property? modified_time_present : Bool = false

    # The original filename used to create this revision. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "originalFilename", type: String?, presence: true, ignore_serialize: original_filename.nil? && !original_filename_present?)]
    property original_filename : String?

    @[JSON::Field(ignore: true)]
    property? original_filename_present : Bool = false

    # Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "publishAuto", type: Bool?, presence: true, ignore_serialize: publish_auto.nil? && !publish_auto_present?)]
    property publish_auto : Bool?

    @[JSON::Field(ignore: true)]
    property? publish_auto_present : Bool = false

    # Whether this revision is published. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "published", type: Bool?, presence: true, ignore_serialize: published.nil? && !published_present?)]
    property published : Bool?

    @[JSON::Field(ignore: true)]
    property? published_present : Bool = false

    # A link to the published revision. This is only populated for Google Sites files.
    @[JSON::Field(key: "publishedLink", type: String?, presence: true, ignore_serialize: published_link.nil? && !published_link_present?)]
    property published_link : String?

    @[JSON::Field(ignore: true)]
    property? published_link_present : Bool = false

    # Whether this revision is published outside the domain. This is only applicable to Docs Editors files.
    @[JSON::Field(key: "publishedOutsideDomain", type: Bool?, presence: true, ignore_serialize: published_outside_domain.nil? && !published_outside_domain_present?)]
    property published_outside_domain : Bool?

    @[JSON::Field(ignore: true)]
    property? published_outside_domain_present : Bool = false

    # The size of the revision's content in bytes. This is only applicable to files with binary content in Drive.
    @[JSON::Field(key: "size", type: String?, presence: true, ignore_serialize: size.nil? && !size_present?)]
    property size : String?

    @[JSON::Field(ignore: true)]
    property? size_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @export_links : Hash(String, String)? = nil,
      @id : String? = nil,
      @keep_forever : Bool? = nil,
      @kind : String? = "drive#revision",
      @last_modifying_user : User? = nil,
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
    def_equals_and_hash(@export_links, @export_links_present, @id, @id_present, @keep_forever, @keep_forever_present, @kind, @kind_present, @last_modifying_user, @last_modifying_user_present, @md5_checksum, @md5_checksum_present, @mime_type, @mime_type_present, @modified_time, @modified_time_present, @original_filename, @original_filename_present, @publish_auto, @publish_auto_present, @published, @published_present, @published_link, @published_link_present, @published_outside_domain, @published_outside_domain_present, @size, @size_present)
  end
end
