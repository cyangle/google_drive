#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./label_field_modification"

module GoogleDrive
  # A modification to a label on a file. A LabelModification can be used to apply a label to a file, update an existing label on a file, or remove a label from a file.
  class LabelModification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The list of modifications to this label's fields.
    @[JSON::Field(key: "fieldModifications", type: Array(GoogleDrive::LabelFieldModification)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter field_modifications : Array(GoogleDrive::LabelFieldModification)? = nil

    # This is always drive#labelModification.
    @[JSON::Field(key: "kind", type: String?, default: "drive#labelModification", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#labelModification"

    # The ID of the label to modify.
    @[JSON::Field(key: "labelId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter label_id : String? = nil

    # If true, the label will be removed from the file.
    @[JSON::Field(key: "removeLabel", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter remove_label : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @field_modifications : Array(GoogleDrive::LabelFieldModification)? = nil,
      @kind : String? = "drive#labelModification",
      @label_id : String? = nil,
      @remove_label : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_field_modifications = @field_modifications).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "field_modifications", container: _field_modifications)) if _field_modifications.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_field_modifications = @field_modifications).nil?
        return false if _field_modifications.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _field_modifications)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] field_modifications Object to be assigned
    def field_modifications=(new_value : Array(GoogleDrive::LabelFieldModification)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @field_modifications = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] label_id Object to be assigned
    def label_id=(new_value : String?)
      @label_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] remove_label Object to be assigned
    def remove_label=(new_value : Bool?)
      @remove_label = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@field_modifications, @kind, @label_id, @remove_label)
  end
end
