#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "nason"
require "time"
require "log"

module GoogleDrive
  # A comment on a file.
  class Comment
    include NASON::Serializable

    # Optional properties
    # A region of the document represented as a JSON string. For details on defining anchor properties, refer to  Add comments and replies.
    @[NASON::Field(key: "anchor", type: String?, nillable: true)]
    property anchor : String?

    @[NASON::Field(key: "author", type: User?, nillable: true)]
    property author : User?

    # The plain text content of the comment. This field is used for setting the content, while htmlContent should be displayed.
    @[NASON::Field(key: "content", type: String?, nillable: true)]
    property content : String?

    # The time at which the comment was created (RFC 3339 date-time).
    @[NASON::Field(key: "createdTime", type: Time?, nillable: true)]
    property created_time : Time?

    # Whether the comment has been deleted. A deleted comment has no content.
    @[NASON::Field(key: "deleted", type: Bool?, nillable: true)]
    property deleted : Bool?

    # The content of the comment with HTML formatting.
    @[NASON::Field(key: "htmlContent", type: String?, nillable: true)]
    property html_content : String?

    # The ID of the comment.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # Identifies what kind of resource this is. Value: the fixed string \"drive#comment\".
    @[NASON::Field(key: "kind", type: String?, default: "drive#comment", nillable: true)]
    property kind : String?

    # The last time the comment or any of its replies was modified (RFC 3339 date-time).
    @[NASON::Field(key: "modifiedTime", type: Time?, nillable: true)]
    property modified_time : Time?

    @[NASON::Field(key: "quotedFileContent", type: CommentQuotedFileContent?, nillable: true)]
    property quoted_file_content : CommentQuotedFileContent?

    # The full list of replies to the comment in chronological order.
    @[NASON::Field(key: "replies", type: Array(Reply)?, nillable: true)]
    property replies : Array(Reply)?

    # Whether the comment has been resolved by one of its replies.
    @[NASON::Field(key: "resolved", type: Bool?, nillable: true)]
    property resolved : Bool?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @anchor : String? = nil, @author : User? = nil, @content : String? = nil, @created_time : Time? = nil, @deleted : Bool? = nil, @html_content : String? = nil, @id : String? = nil, @kind : String? = "drive#comment", @modified_time : Time? = nil, @quoted_file_content : CommentQuotedFileContent? = nil, @replies : Array(Reply)? = nil, @resolved : Bool? = nil)
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
        anchor == o.anchor &&
        author == o.author &&
        content == o.content &&
        created_time == o.created_time &&
        deleted == o.deleted &&
        html_content == o.html_content &&
        id == o.id &&
        kind == o.kind &&
        modified_time == o.modified_time &&
        quoted_file_content == o.quoted_file_content &&
        replies == o.replies &&
        resolved == o.resolved
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [anchor, author, content, created_time, deleted, html_content, id, kind, modified_time, quoted_file_content, replies, resolved].hash
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
