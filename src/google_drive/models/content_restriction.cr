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
  # A restriction for accessing the content of the file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContentRestriction
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # Whether the content of the file is read-only. If a file is read-only, a new revision of the file may not be added, comments may not be added or modified, and the title of the file may not be modified.
    @[JSON::Field(key: "readOnly", type: Bool?, presence: true, ignore_serialize: read_only.nil? && !read_only_present?)]
    property read_only : Bool?

    @[JSON::Field(ignore: true)]
    property? read_only_present : Bool = false

    # Reason for why the content of the file is restricted. This is only mutable on requests that also set readOnly=true.
    @[JSON::Field(key: "reason", type: String?, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    property reason : String?

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    @[JSON::Field(key: "restrictingUser", type: User?, presence: true, ignore_serialize: restricting_user.nil? && !restricting_user_present?)]
    property restricting_user : User?

    @[JSON::Field(ignore: true)]
    property? restricting_user_present : Bool = false

    # The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated if readOnly is true.
    @[JSON::Field(key: "restrictionTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: restriction_time.nil? && !restriction_time_present?)]
    property restriction_time : Time?

    @[JSON::Field(ignore: true)]
    property? restriction_time_present : Bool = false

    # The type of the content restriction. Currently the only possible value is globalContentRestriction.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    property _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @read_only : Bool? = nil, @reason : String? = nil, @restricting_user : User? = nil, @restriction_time : Time? = nil, @_type : String? = nil)
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
        read_only == o.read_only &&
        reason == o.reason &&
        restricting_user == o.restricting_user &&
        restriction_time == o.restriction_time &&
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
      [read_only, reason, restricting_user, restriction_time, _type].hash
    end
  end
end
