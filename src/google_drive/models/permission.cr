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
  # A permission for a file. A permission grants a user, group, domain or the world access to a file or a folder hierarchy.
  class Permission
    include NASON::Serializable

    # Optional properties
    # Whether the permission allows the file to be discovered through search. This is only applicable for permissions of type domain or anyone.
    @[NASON::Field(key: "allowFileDiscovery", type: Bool?, nillable: true)]
    property allow_file_discovery : Bool?

    # Whether the account associated with this permission has been deleted. This field only pertains to user and group permissions.
    @[NASON::Field(key: "deleted", type: Bool?, nillable: true)]
    property deleted : Bool?

    # The \"pretty\" name of the value of the permission. The following is a list of examples for each type of permission:   - user - User's full name, as defined for their Google account, such as \"Joe Smith.\"  - group - Name of the Google Group, such as \"The Company Administrators.\"  - domain - String domain name, such as \"thecompany.com.\"  - anyone - No displayName is present.
    @[NASON::Field(key: "displayName", type: String?, nillable: true)]
    property display_name : String?

    # The domain to which this permission refers.
    @[NASON::Field(key: "domain", type: String?, nillable: true)]
    property domain : String?

    # The email address of the user or group to which this permission refers.
    @[NASON::Field(key: "emailAddress", type: String?, nillable: true)]
    property email_address : String?

    # The time at which this permission will expire (RFC 3339 date-time). Expiration times have the following restrictions:   - They can only be set on user and group permissions  - The time must be in the future  - The time cannot be more than a year in the future
    @[NASON::Field(key: "expirationTime", type: Time?, converter: Time::RFC3339Converter, nillable: true)]
    property expiration_time : Time?

    # The ID of this permission. This is a unique identifier for the grantee, and is published in User resources as permissionId. IDs should be treated as opaque values.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # Identifies what kind of resource this is. Value: the fixed string \"drive#permission\".
    @[NASON::Field(key: "kind", type: String?, default: "drive#permission", nillable: true)]
    property kind : String?

    # Details of whether the permissions on this shared drive item are inherited or directly on this item. This is an output-only field which is present only for shared drive items.
    @[NASON::Field(key: "permissionDetails", type: Array(PermissionPermissionDetails)?, nillable: true)]
    property permission_details : Array(PermissionPermissionDetails)?

    # A link to the user's profile photo, if available.
    @[NASON::Field(key: "photoLink", type: String?, nillable: true)]
    property photo_link : String?

    # The role granted by this permission. While new values may be supported in the future, the following are currently allowed:   - owner  - organizer  - fileOrganizer  - writer  - commenter  - reader
    @[NASON::Field(key: "role", type: String?, nillable: true)]
    property role : String?

    # Deprecated - use permissionDetails instead.
    @[NASON::Field(key: "teamDrivePermissionDetails", type: Array(PermissionTeamDrivePermissionDetails)?, nillable: true)]
    property team_drive_permission_details : Array(PermissionTeamDrivePermissionDetails)?

    # The type of the grantee. Valid values are:   - user  - group  - domain  - anyone  When creating a permission, if type is user or group, you must provide an emailAddress for the user or group. When type is domain, you must provide a domain. There isn't extra information required for a anyone type.
    @[NASON::Field(key: "type", type: String?, nillable: true)]
    property _type : String?

    # Indicates the view for this permission. Only populated for permissions that belong to a view. published is the only supported value.
    @[NASON::Field(key: "view", type: String?, nillable: true)]
    property view : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @allow_file_discovery : Bool? = nil, @deleted : Bool? = nil, @display_name : String? = nil, @domain : String? = nil, @email_address : String? = nil, @expiration_time : Time? = nil, @id : String? = nil, @kind : String? = "drive#permission", @permission_details : Array(PermissionPermissionDetails)? = nil, @photo_link : String? = nil, @role : String? = nil, @team_drive_permission_details : Array(PermissionTeamDrivePermissionDetails)? = nil, @_type : String? = nil, @view : String? = nil)
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
        allow_file_discovery == o.allow_file_discovery &&
        deleted == o.deleted &&
        display_name == o.display_name &&
        domain == o.domain &&
        email_address == o.email_address &&
        expiration_time == o.expiration_time &&
        id == o.id &&
        kind == o.kind &&
        permission_details == o.permission_details &&
        photo_link == o.photo_link &&
        role == o.role &&
        team_drive_permission_details == o.team_drive_permission_details &&
        _type == o._type &&
        view == o.view
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allow_file_discovery, deleted, display_name, domain, email_address, expiration_time, id, kind, permission_details, photo_link, role, team_drive_permission_details, _type, view].hash
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
