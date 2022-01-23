#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module GoogleDrive
  # The metadata for a revision to a file.
  class Revision
    include NASON::Serializable

    # Optional properties
    # Links for exporting Docs Editors files to specific formats.
    @[NASON::Field(key: "exportLinks", type: Hash(String, String)?, nillable: true)]
    property export_links : Hash(String, String)?

    # The ID of the revision.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive.
    @[NASON::Field(key: "keepForever", type: Bool?, nillable: true)]
    property keep_forever : Bool?

    # Identifies what kind of resource this is. Value: the fixed string \"drive#revision\".
    @[NASON::Field(key: "kind", type: String?, default: "drive#revision", nillable: true)]
    property kind : String?

    @[NASON::Field(key: "lastModifyingUser", type: User?, nillable: true)]
    property last_modifying_user : User?

    # The MD5 checksum of the revision's content. This is only applicable to files with binary content in Drive.
    @[NASON::Field(key: "md5Checksum", type: String?, nillable: true)]
    property md5_checksum : String?

    # The MIME type of the revision.
    @[NASON::Field(key: "mimeType", type: String?, nillable: true)]
    property mime_type : String?

    # The last time the revision was modified (RFC 3339 date-time).
    @[NASON::Field(key: "modifiedTime", type: Time?, converter: Time::RFC3339Converter, nillable: true)]
    property modified_time : Time?

    # The original filename used to create this revision. This is only applicable to files with binary content in Drive.
    @[NASON::Field(key: "originalFilename", type: String?, nillable: true)]
    property original_filename : String?

    # Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.
    @[NASON::Field(key: "publishAuto", type: Bool?, nillable: true)]
    property publish_auto : Bool?

    # Whether this revision is published. This is only applicable to Docs Editors files.
    @[NASON::Field(key: "published", type: Bool?, nillable: true)]
    property published : Bool?

    # A link to the published revision. This is only populated for Google Sites files.
    @[NASON::Field(key: "publishedLink", type: String?, nillable: true)]
    property published_link : String?

    # Whether this revision is published outside the domain. This is only applicable to Docs Editors files.
    @[NASON::Field(key: "publishedOutsideDomain", type: Bool?, nillable: true)]
    property published_outside_domain : Bool?

    # The size of the revision's content in bytes. This is only applicable to files with binary content in Drive.
    @[NASON::Field(key: "size", type: String?, nillable: true)]
    property size : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @export_links : Hash(String, String)? = nil, @id : String? = nil, @keep_forever : Bool? = nil, @kind : String? = "drive#revision", @last_modifying_user : User? = nil, @md5_checksum : String? = nil, @mime_type : String? = nil, @modified_time : Time? = nil, @original_filename : String? = nil, @publish_auto : Bool? = nil, @published : Bool? = nil, @published_link : String? = nil, @published_outside_domain : Bool? = nil, @size : String? = nil)
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
        export_links == o.export_links &&
        id == o.id &&
        keep_forever == o.keep_forever &&
        kind == o.kind &&
        last_modifying_user == o.last_modifying_user &&
        md5_checksum == o.md5_checksum &&
        mime_type == o.mime_type &&
        modified_time == o.modified_time &&
        original_filename == o.original_filename &&
        publish_auto == o.publish_auto &&
        published == o.published &&
        published_link == o.published_link &&
        published_outside_domain == o.published_outside_domain &&
        size == o.size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [export_links, id, keep_forever, kind, last_modifying_user, md5_checksum, mime_type, modified_time, original_filename, publish_auto, published, published_link, published_outside_domain, size].hash
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
