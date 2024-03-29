#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module GoogleDrive
  # A list of generated file IDs which can be provided in create requests.
  class GeneratedIds
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The IDs generated for the requesting user in the specified space.
    @[JSON::Field(key: "ids", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ids : Array(String)? = nil

    # Identifies what kind of resource this is. Value: the fixed string \"drive#generatedIds\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#generatedIds", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#generatedIds"

    # The type of file that can be created with these IDs.
    @[JSON::Field(key: "space", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter space : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ids : Array(String)? = nil,
      @kind : String? = "drive#generatedIds",
      @space : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ids Object to be assigned
    def ids=(new_value : Array(String)?)
      @ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] space Object to be assigned
    def space=(new_value : String?)
      @space = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ids, @kind, @space)
  end
end
