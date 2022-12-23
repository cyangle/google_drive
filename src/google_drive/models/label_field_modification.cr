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
  # A modification to a label's field.
  class LabelFieldModification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The ID of the Field to be modified.
    @[JSON::Field(key: "fieldId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter field_id : String? = nil

    # This is always drive#labelFieldModification.
    @[JSON::Field(key: "kind", type: String?, default: "drive#labelFieldModification", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "drive#labelFieldModification"

    # Replaces a dateString field with these new values. The values must be strings in the RFC 3339 full-date format: YYYY-MM-DD.
    @[JSON::Field(key: "setDateValues", type: Array(Time)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_date_values : Array(Time)? = nil

    # Replaces an integer field with these new values.
    @[JSON::Field(key: "setIntegerValues", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_integer_values : Array(String)? = nil

    # Replaces a selection field with these new values.
    @[JSON::Field(key: "setSelectionValues", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_selection_values : Array(String)? = nil

    # Replaces a text field with these new values.
    @[JSON::Field(key: "setTextValues", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_text_values : Array(String)? = nil

    # Replaces a user field with these new values. The values must be valid email addresses.
    @[JSON::Field(key: "setUserValues", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_user_values : Array(String)? = nil

    # Unsets the values for this field.
    @[JSON::Field(key: "unsetValues", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unset_values : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @field_id : String? = nil,
      @kind : String? = "drive#labelFieldModification",
      @set_date_values : Array(Time)? = nil,
      @set_integer_values : Array(String)? = nil,
      @set_selection_values : Array(String)? = nil,
      @set_text_values : Array(String)? = nil,
      @set_user_values : Array(String)? = nil,
      @unset_values : Bool? = nil
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
    # @param [Object] field_id Object to be assigned
    def field_id=(new_value : String?)
      @field_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_date_values Object to be assigned
    def set_date_values=(new_value : Array(Time)?)
      @set_date_values = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_integer_values Object to be assigned
    def set_integer_values=(new_value : Array(String)?)
      @set_integer_values = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_selection_values Object to be assigned
    def set_selection_values=(new_value : Array(String)?)
      @set_selection_values = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_text_values Object to be assigned
    def set_text_values=(new_value : Array(String)?)
      @set_text_values = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_user_values Object to be assigned
    def set_user_values=(new_value : Array(String)?)
      @set_user_values = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unset_values Object to be assigned
    def unset_values=(new_value : Bool?)
      @unset_values = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@field_id, @kind, @set_date_values, @set_integer_values, @set_selection_values, @set_text_values, @set_user_values, @unset_values)
  end
end
