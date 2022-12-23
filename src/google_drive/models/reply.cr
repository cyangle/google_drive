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
  # A reply to a comment on a file.
  class Reply
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The action the reply performed to the parent comment. Valid values are:   - resolve  - reopen
    @[JSON::Field(key: "action", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter action : String? = nil

    @[JSON::Field(key: "author", type: GoogleDrive::User?, default: nil, required: false, nullable: false, emit_null: false)]
    getter author : GoogleDrive::User? = nil

    # The plain text content of the reply. This field is used for setting the content, while htmlContent should be displayed. This is required on creates if no action is specified.
    @[JSON::Field(key: "content", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter content : String? = nil

    # The time at which the reply was created (RFC 3339 date-time).
    @[JSON::Field(key: "createdTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created_time : Time? = nil

    # Whether the reply has been deleted. A deleted reply has no content.
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter deleted : Bool? = nil

    # The content of the reply with HTML formatting.
    @[JSON::Field(key: "htmlContent", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter html_content : String? = nil

    # The ID of the reply.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#reply\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#reply", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#reply"

    # The last time the reply was modified (RFC 3339 date-time).
    @[JSON::Field(key: "modifiedTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter modified_time : Time? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @action : String? = nil,
      @author : GoogleDrive::User? = nil,
      @content : String? = nil,
      @created_time : Time? = nil,
      @deleted : Bool? = nil,
      @html_content : String? = nil,
      @id : String? = nil,
      @kind : String? = "drive#reply",
      @modified_time : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_author = @author).nil?
        invalid_properties.concat(_author.list_invalid_properties_for("author")) if _author.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_author = @author).nil?
        return false if _author.is_a?(OpenApi::Validatable) && !_author.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action : String?)
      if action.nil?
        return @action = nil
      end
      _action = action.not_nil!
      @action = _action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] author Object to be assigned
    def author=(author : GoogleDrive::User?)
      if author.nil?
        return @author = nil
      end
      _author = author.not_nil!
      _author.validate if _author.is_a?(OpenApi::Validatable)
      @author = _author
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] content Object to be assigned
    def content=(content : String?)
      if content.nil?
        return @content = nil
      end
      _content = content.not_nil!
      @content = _content
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created_time Object to be assigned
    def created_time=(created_time : Time?)
      if created_time.nil?
        return @created_time = nil
      end
      _created_time = created_time.not_nil!
      @created_time = _created_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(deleted : Bool?)
      if deleted.nil?
        return @deleted = nil
      end
      _deleted = deleted.not_nil!
      @deleted = _deleted
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] html_content Object to be assigned
    def html_content=(html_content : String?)
      if html_content.nil?
        return @html_content = nil
      end
      _html_content = html_content.not_nil!
      @html_content = _html_content
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        return @id = nil
      end
      _id = id.not_nil!
      @id = _id
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
    # @param [Object] modified_time Object to be assigned
    def modified_time=(modified_time : Time?)
      if modified_time.nil?
        return @modified_time = nil
      end
      _modified_time = modified_time.not_nil!
      @modified_time = _modified_time
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @author, @content, @created_time, @deleted, @html_content, @id, @kind, @modified_time)
  end
end
