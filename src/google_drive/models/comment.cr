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
  # A comment on a file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Comment
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # A region of the document represented as a JSON string. For details on defining anchor properties, refer to  Add comments and replies.
    @[JSON::Field(key: "anchor", type: String?, presence: true, ignore_serialize: anchor.nil? && !anchor_present?)]
    property anchor : String?

    @[JSON::Field(ignore: true)]
    property? anchor_present : Bool = false

    @[JSON::Field(key: "author", type: User?, presence: true, ignore_serialize: author.nil? && !author_present?)]
    property author : User?

    @[JSON::Field(ignore: true)]
    property? author_present : Bool = false

    # The plain text content of the comment. This field is used for setting the content, while htmlContent should be displayed.
    @[JSON::Field(key: "content", type: String?, presence: true, ignore_serialize: content.nil? && !content_present?)]
    property content : String?

    @[JSON::Field(ignore: true)]
    property? content_present : Bool = false

    # The time at which the comment was created (RFC 3339 date-time).
    @[JSON::Field(key: "createdTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: created_time.nil? && !created_time_present?)]
    property created_time : Time?

    @[JSON::Field(ignore: true)]
    property? created_time_present : Bool = false

    # Whether the comment has been deleted. A deleted comment has no content.
    @[JSON::Field(key: "deleted", type: Bool?, presence: true, ignore_serialize: deleted.nil? && !deleted_present?)]
    property deleted : Bool?

    @[JSON::Field(ignore: true)]
    property? deleted_present : Bool = false

    # The content of the comment with HTML formatting.
    @[JSON::Field(key: "htmlContent", type: String?, presence: true, ignore_serialize: html_content.nil? && !html_content_present?)]
    property html_content : String?

    @[JSON::Field(ignore: true)]
    property? html_content_present : Bool = false

    # The ID of the comment.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#comment\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#comment", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "drive#comment"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # The last time the comment or any of its replies was modified (RFC 3339 date-time).
    @[JSON::Field(key: "modifiedTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: modified_time.nil? && !modified_time_present?)]
    property modified_time : Time?

    @[JSON::Field(ignore: true)]
    property? modified_time_present : Bool = false

    @[JSON::Field(key: "quotedFileContent", type: CommentQuotedFileContent?, presence: true, ignore_serialize: quoted_file_content.nil? && !quoted_file_content_present?)]
    property quoted_file_content : CommentQuotedFileContent?

    @[JSON::Field(ignore: true)]
    property? quoted_file_content_present : Bool = false

    # The full list of replies to the comment in chronological order.
    @[JSON::Field(key: "replies", type: Array(Reply)?, presence: true, ignore_serialize: replies.nil? && !replies_present?)]
    property replies : Array(Reply)?

    @[JSON::Field(ignore: true)]
    property? replies_present : Bool = false

    # Whether the comment has been resolved by one of its replies.
    @[JSON::Field(key: "resolved", type: Bool?, presence: true, ignore_serialize: resolved.nil? && !resolved_present?)]
    property resolved : Bool?

    @[JSON::Field(ignore: true)]
    property? resolved_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @anchor : String? = nil,
      @author : User? = nil,
      @content : String? = nil,
      @created_time : Time? = nil,
      @deleted : Bool? = nil,
      @html_content : String? = nil,
      @id : String? = nil,
      @kind : String? = "drive#comment",
      @modified_time : Time? = nil,
      @quoted_file_content : CommentQuotedFileContent? = nil,
      @replies : Array(Reply)? = nil,
      @resolved : Bool? = nil
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
    def_equals_and_hash(@anchor, @anchor_present, @author, @author_present, @content, @content_present, @created_time, @created_time_present, @deleted, @deleted_present, @html_content, @html_content_present, @id, @id_present, @kind, @kind_present, @modified_time, @modified_time_present, @quoted_file_content, @quoted_file_content_present, @replies, @replies_present, @resolved, @resolved_present)
  end
end
