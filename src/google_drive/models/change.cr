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

    # Optional properties
    # The type of the change. Possible values are file and drive.
    @[JSON::Field(key: "changeType", type: String?, presence: true, ignore_serialize: change_type.nil? && !change_type_present?, emit_null: true)]
    property change_type : String?
    @[JSON::Field(ignore: true)]
    property? change_type_present : Bool = false

    @[JSON::Field(key: "drive", type: Drive?, presence: true, ignore_serialize: drive.nil? && !drive_present?, emit_null: true)]
    property drive : Drive?
    @[JSON::Field(ignore: true)]
    property? drive_present : Bool = false

    # The ID of the shared drive associated with this change.
    @[JSON::Field(key: "driveId", type: String?, presence: true, ignore_serialize: drive_id.nil? && !drive_id_present?, emit_null: true)]
    property drive_id : String?
    @[JSON::Field(ignore: true)]
    property? drive_id_present : Bool = false

    @[JSON::Field(key: "file", type: File?, presence: true, ignore_serialize: file.nil? && !file_present?, emit_null: true)]
    property file : File?
    @[JSON::Field(ignore: true)]
    property? file_present : Bool = false

    # The ID of the file which has changed.
    @[JSON::Field(key: "fileId", type: String?, presence: true, ignore_serialize: file_id.nil? && !file_id_present?, emit_null: true)]
    property file_id : String?
    @[JSON::Field(ignore: true)]
    property? file_id_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#change\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#change", presence: true, ignore_serialize: kind.nil? && !kind_present?, emit_null: true)]
    property kind : String?
    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.
    @[JSON::Field(key: "removed", type: Bool?, presence: true, ignore_serialize: removed.nil? && !removed_present?, emit_null: true)]
    property removed : Bool?
    @[JSON::Field(ignore: true)]
    property? removed_present : Bool = false

    @[JSON::Field(key: "teamDrive", type: TeamDrive?, presence: true, ignore_serialize: team_drive.nil? && !team_drive_present?, emit_null: true)]
    property team_drive : TeamDrive?
    @[JSON::Field(ignore: true)]
    property? team_drive_present : Bool = false

    # Deprecated - use driveId instead.
    @[JSON::Field(key: "teamDriveId", type: String?, presence: true, ignore_serialize: team_drive_id.nil? && !team_drive_id_present?, emit_null: true)]
    property team_drive_id : String?
    @[JSON::Field(ignore: true)]
    property? team_drive_id_present : Bool = false

    # The time of this change (RFC 3339 date-time).
    @[JSON::Field(key: "time", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time.nil? && !time_present?, emit_null: true)]
    property time : Time?
    @[JSON::Field(ignore: true)]
    property? time_present : Bool = false

    # Deprecated - use changeType instead.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?, emit_null: true)]
    property _type : String?
    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @change_type : String? = nil, @drive : Drive? = nil, @drive_id : String? = nil, @file : File? = nil, @file_id : String? = nil, @kind : String? = "drive#change", @removed : Bool? = nil, @team_drive : TeamDrive? = nil, @team_drive_id : String? = nil, @time : Time? = nil, @_type : String? = nil)
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
        change_type == o.change_type &&
        drive == o.drive &&
        drive_id == o.drive_id &&
        file == o.file &&
        file_id == o.file_id &&
        kind == o.kind &&
        removed == o.removed &&
        team_drive == o.team_drive &&
        team_drive_id == o.team_drive_id &&
        time == o.time &&
        _type == o._type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [change_type, drive, drive_id, file, file_id, kind, removed, team_drive, team_drive_id, time, _type].hash
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
