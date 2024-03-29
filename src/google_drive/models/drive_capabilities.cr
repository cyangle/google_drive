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
  # Capabilities the current user has on this shared drive.
  class DriveCapabilities
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the current user can add children to folders in this shared drive.
    @[JSON::Field(key: "canAddChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_add_children : Bool? = nil

    # Whether the current user can change the copyRequiresWriterPermission restriction of this shared drive.
    @[JSON::Field(key: "canChangeCopyRequiresWriterPermissionRestriction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_copy_requires_writer_permission_restriction : Bool? = nil

    # Whether the current user can change the domainUsersOnly restriction of this shared drive.
    @[JSON::Field(key: "canChangeDomainUsersOnlyRestriction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_domain_users_only_restriction : Bool? = nil

    # Whether the current user can change the background of this shared drive.
    @[JSON::Field(key: "canChangeDriveBackground", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_drive_background : Bool? = nil

    # Whether the current user can change the driveMembersOnly restriction of this shared drive.
    @[JSON::Field(key: "canChangeDriveMembersOnlyRestriction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_drive_members_only_restriction : Bool? = nil

    # Whether the current user can comment on files in this shared drive.
    @[JSON::Field(key: "canComment", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_comment : Bool? = nil

    # Whether the current user can copy files in this shared drive.
    @[JSON::Field(key: "canCopy", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_copy : Bool? = nil

    # Whether the current user can delete children from folders in this shared drive.
    @[JSON::Field(key: "canDeleteChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_delete_children : Bool? = nil

    # Whether the current user can delete this shared drive. Attempting to delete the shared drive may still fail if there are untrashed items inside the shared drive.
    @[JSON::Field(key: "canDeleteDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_delete_drive : Bool? = nil

    # Whether the current user can download files in this shared drive.
    @[JSON::Field(key: "canDownload", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_download : Bool? = nil

    # Whether the current user can edit files in this shared drive
    @[JSON::Field(key: "canEdit", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_edit : Bool? = nil

    # Whether the current user can list the children of folders in this shared drive.
    @[JSON::Field(key: "canListChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_list_children : Bool? = nil

    # Whether the current user can add members to this shared drive or remove them or change their role.
    @[JSON::Field(key: "canManageMembers", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_manage_members : Bool? = nil

    # Whether the current user can read the revisions resource of files in this shared drive.
    @[JSON::Field(key: "canReadRevisions", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_read_revisions : Bool? = nil

    # Whether the current user can rename files or folders in this shared drive.
    @[JSON::Field(key: "canRename", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_rename : Bool? = nil

    # Whether the current user can rename this shared drive.
    @[JSON::Field(key: "canRenameDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_rename_drive : Bool? = nil

    # Whether the current user can reset the shared drive restrictions to defaults.
    @[JSON::Field(key: "canResetDriveRestrictions", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_reset_drive_restrictions : Bool? = nil

    # Whether the current user can share files or folders in this shared drive.
    @[JSON::Field(key: "canShare", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_share : Bool? = nil

    # Whether the current user can trash children from folders in this shared drive.
    @[JSON::Field(key: "canTrashChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_trash_children : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @can_add_children : Bool? = nil,
      @can_change_copy_requires_writer_permission_restriction : Bool? = nil,
      @can_change_domain_users_only_restriction : Bool? = nil,
      @can_change_drive_background : Bool? = nil,
      @can_change_drive_members_only_restriction : Bool? = nil,
      @can_comment : Bool? = nil,
      @can_copy : Bool? = nil,
      @can_delete_children : Bool? = nil,
      @can_delete_drive : Bool? = nil,
      @can_download : Bool? = nil,
      @can_edit : Bool? = nil,
      @can_list_children : Bool? = nil,
      @can_manage_members : Bool? = nil,
      @can_read_revisions : Bool? = nil,
      @can_rename : Bool? = nil,
      @can_rename_drive : Bool? = nil,
      @can_reset_drive_restrictions : Bool? = nil,
      @can_share : Bool? = nil,
      @can_trash_children : Bool? = nil
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
    # @param [Object] can_add_children Object to be assigned
    def can_add_children=(new_value : Bool?)
      @can_add_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_copy_requires_writer_permission_restriction Object to be assigned
    def can_change_copy_requires_writer_permission_restriction=(new_value : Bool?)
      @can_change_copy_requires_writer_permission_restriction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_domain_users_only_restriction Object to be assigned
    def can_change_domain_users_only_restriction=(new_value : Bool?)
      @can_change_domain_users_only_restriction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_drive_background Object to be assigned
    def can_change_drive_background=(new_value : Bool?)
      @can_change_drive_background = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_drive_members_only_restriction Object to be assigned
    def can_change_drive_members_only_restriction=(new_value : Bool?)
      @can_change_drive_members_only_restriction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_comment Object to be assigned
    def can_comment=(new_value : Bool?)
      @can_comment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_copy Object to be assigned
    def can_copy=(new_value : Bool?)
      @can_copy = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_delete_children Object to be assigned
    def can_delete_children=(new_value : Bool?)
      @can_delete_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_delete_drive Object to be assigned
    def can_delete_drive=(new_value : Bool?)
      @can_delete_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_download Object to be assigned
    def can_download=(new_value : Bool?)
      @can_download = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_edit Object to be assigned
    def can_edit=(new_value : Bool?)
      @can_edit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_list_children Object to be assigned
    def can_list_children=(new_value : Bool?)
      @can_list_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_manage_members Object to be assigned
    def can_manage_members=(new_value : Bool?)
      @can_manage_members = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_read_revisions Object to be assigned
    def can_read_revisions=(new_value : Bool?)
      @can_read_revisions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_rename Object to be assigned
    def can_rename=(new_value : Bool?)
      @can_rename = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_rename_drive Object to be assigned
    def can_rename_drive=(new_value : Bool?)
      @can_rename_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_reset_drive_restrictions Object to be assigned
    def can_reset_drive_restrictions=(new_value : Bool?)
      @can_reset_drive_restrictions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_share Object to be assigned
    def can_share=(new_value : Bool?)
      @can_share = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_trash_children Object to be assigned
    def can_trash_children=(new_value : Bool?)
      @can_trash_children = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@can_add_children, @can_change_copy_requires_writer_permission_restriction, @can_change_domain_users_only_restriction, @can_change_drive_background, @can_change_drive_members_only_restriction, @can_comment, @can_copy, @can_delete_children, @can_delete_drive, @can_download, @can_edit, @can_list_children, @can_manage_members, @can_read_revisions, @can_rename, @can_rename_drive, @can_reset_drive_restrictions, @can_share, @can_trash_children)
  end
end
