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
  # An notification channel used to watch for resource changes.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Channel
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The address where notifications are delivered for this channel.
    @[JSON::Field(key: "address", type: String?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : String?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    @[JSON::Field(key: "expiration", type: String?, presence: true, ignore_serialize: expiration.nil? && !expiration_present?)]
    property expiration : String?

    @[JSON::Field(ignore: true)]
    property? expiration_present : Bool = false

    # A UUID or similar unique string that identifies this channel.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    @[JSON::Field(key: "kind", type: String?, default: "api#channel", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "api#channel"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Additional parameters controlling delivery channel behavior. Optional.
    @[JSON::Field(key: "params", type: Hash(String, String)?, presence: true, ignore_serialize: params.nil? && !params_present?)]
    property params : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? params_present : Bool = false

    # A Boolean value to indicate whether payload is wanted. Optional.
    @[JSON::Field(key: "payload", type: Bool?, presence: true, ignore_serialize: payload.nil? && !payload_present?)]
    property payload : Bool?

    @[JSON::Field(ignore: true)]
    property? payload_present : Bool = false

    # An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    @[JSON::Field(key: "resourceId", type: String?, presence: true, ignore_serialize: resource_id.nil? && !resource_id_present?)]
    property resource_id : String?

    @[JSON::Field(ignore: true)]
    property? resource_id_present : Bool = false

    # A version-specific identifier for the watched resource.
    @[JSON::Field(key: "resourceUri", type: String?, presence: true, ignore_serialize: resource_uri.nil? && !resource_uri_present?)]
    property resource_uri : String?

    @[JSON::Field(ignore: true)]
    property? resource_uri_present : Bool = false

    # An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    @[JSON::Field(key: "token", type: String?, presence: true, ignore_serialize: token.nil? && !token_present?)]
    property token : String?

    @[JSON::Field(ignore: true)]
    property? token_present : Bool = false

    # The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    property _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : String? = nil,
      @expiration : String? = nil,
      @id : String? = nil,
      @kind : String? = "api#channel",
      @params : Hash(String, String)? = nil,
      @payload : Bool? = nil,
      @resource_id : String? = nil,
      @resource_uri : String? = nil,
      @token : String? = nil,
      @_type : String? = nil
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
    def_equals_and_hash(@address, @address_present, @expiration, @expiration_present, @id, @id_present, @kind, @kind_present, @params, @params_present, @payload, @payload_present, @resource_id, @resource_id_present, @resource_uri, @resource_uri_present, @token, @token_present, @_type, @_type_present)
  end
end
