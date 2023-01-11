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
  # Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
  class FileCapabilities
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the current user is the pending owner of the file. Not populated for shared drive files.
    @[JSON::Field(key: "canAcceptOwnership", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_accept_ownership : Bool? = nil

    # Whether the current user can add children to this folder. This is always false when the item is not a folder.
    @[JSON::Field(key: "canAddChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_add_children : Bool? = nil

    # Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[JSON::Field(key: "canAddFolderFromAnotherDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_add_folder_from_another_drive : Bool? = nil

    # Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.
    @[JSON::Field(key: "canAddMyDriveParent", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_add_my_drive_parent : Bool? = nil

    # Whether the current user can change the copyRequiresWriterPermission restriction of this file.
    @[JSON::Field(key: "canChangeCopyRequiresWriterPermission", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_copy_requires_writer_permission : Bool? = nil

    # Whether the current user can change the securityUpdateEnabled field on link share metadata.
    @[JSON::Field(key: "canChangeSecurityUpdateEnabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_security_update_enabled : Bool? = nil

    # Deprecated
    @[JSON::Field(key: "canChangeViewersCanCopyContent", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_change_viewers_can_copy_content : Bool? = nil

    # Whether the current user can comment on this file.
    @[JSON::Field(key: "canComment", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_comment : Bool? = nil

    # Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.
    @[JSON::Field(key: "canCopy", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_copy : Bool? = nil

    # Whether the current user can delete this file.
    @[JSON::Field(key: "canDelete", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_delete : Bool? = nil

    # Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[JSON::Field(key: "canDeleteChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_delete_children : Bool? = nil

    # Whether the current user can download this file.
    @[JSON::Field(key: "canDownload", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_download : Bool? = nil

    # Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see canChangeCopyRequiresWriterPermission or canModifyContent.
    @[JSON::Field(key: "canEdit", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_edit : Bool? = nil

    # Whether the current user can list the children of this folder. This is always false when the item is not a folder.
    @[JSON::Field(key: "canListChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_list_children : Bool? = nil

    # Whether the current user can modify the content of this file.
    @[JSON::Field(key: "canModifyContent", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_modify_content : Bool? = nil

    # Whether the current user can modify restrictions on content of this file.
    @[JSON::Field(key: "canModifyContentRestriction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_modify_content_restriction : Bool? = nil

    # Whether the current user can modify the labels on this file.
    @[JSON::Field(key: "canModifyLabels", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_modify_labels : Bool? = nil

    # Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.
    @[JSON::Field(key: "canMoveChildrenOutOfDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_children_out_of_drive : Bool? = nil

    # Deprecated - use canMoveChildrenOutOfDrive instead.
    @[JSON::Field(key: "canMoveChildrenOutOfTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_children_out_of_team_drive : Bool? = nil

    # Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user's access to the child and to the destination folder.
    @[JSON::Field(key: "canMoveChildrenWithinDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_children_within_drive : Bool? = nil

    # Deprecated - use canMoveChildrenWithinDrive instead.
    @[JSON::Field(key: "canMoveChildrenWithinTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_children_within_team_drive : Bool? = nil

    # Deprecated - use canMoveItemOutOfDrive instead.
    @[JSON::Field(key: "canMoveItemIntoTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_item_into_team_drive : Bool? = nil

    # Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.
    @[JSON::Field(key: "canMoveItemOutOfDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_item_out_of_drive : Bool? = nil

    # Deprecated - use canMoveItemOutOfDrive instead.
    @[JSON::Field(key: "canMoveItemOutOfTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_item_out_of_team_drive : Bool? = nil

    # Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.
    @[JSON::Field(key: "canMoveItemWithinDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_item_within_drive : Bool? = nil

    # Deprecated - use canMoveItemWithinDrive instead.
    @[JSON::Field(key: "canMoveItemWithinTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_item_within_team_drive : Bool? = nil

    # Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.
    @[JSON::Field(key: "canMoveTeamDriveItem", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_move_team_drive_item : Bool? = nil

    # Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.
    @[JSON::Field(key: "canReadDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_read_drive : Bool? = nil

    # Whether the current user can read the labels on this file.
    @[JSON::Field(key: "canReadLabels", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_read_labels : Bool? = nil

    # Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it isn't a folder, can be read.
    @[JSON::Field(key: "canReadRevisions", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_read_revisions : Bool? = nil

    # Deprecated - use canReadDrive instead.
    @[JSON::Field(key: "canReadTeamDrive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_read_team_drive : Bool? = nil

    # Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use canDeleteChildren or canTrashChildren instead.
    @[JSON::Field(key: "canRemoveChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_remove_children : Bool? = nil

    # Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.
    @[JSON::Field(key: "canRemoveMyDriveParent", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_remove_my_drive_parent : Bool? = nil

    # Whether the current user can rename this file.
    @[JSON::Field(key: "canRename", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_rename : Bool? = nil

    # Whether the current user can modify the sharing settings for this file.
    @[JSON::Field(key: "canShare", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_share : Bool? = nil

    # Whether the current user can move this file to trash.
    @[JSON::Field(key: "canTrash", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_trash : Bool? = nil

    # Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[JSON::Field(key: "canTrashChildren", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_trash_children : Bool? = nil

    # Whether the current user can restore this file from trash.
    @[JSON::Field(key: "canUntrash", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter can_untrash : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @can_accept_ownership : Bool? = nil,
      @can_add_children : Bool? = nil,
      @can_add_folder_from_another_drive : Bool? = nil,
      @can_add_my_drive_parent : Bool? = nil,
      @can_change_copy_requires_writer_permission : Bool? = nil,
      @can_change_security_update_enabled : Bool? = nil,
      @can_change_viewers_can_copy_content : Bool? = nil,
      @can_comment : Bool? = nil,
      @can_copy : Bool? = nil,
      @can_delete : Bool? = nil,
      @can_delete_children : Bool? = nil,
      @can_download : Bool? = nil,
      @can_edit : Bool? = nil,
      @can_list_children : Bool? = nil,
      @can_modify_content : Bool? = nil,
      @can_modify_content_restriction : Bool? = nil,
      @can_modify_labels : Bool? = nil,
      @can_move_children_out_of_drive : Bool? = nil,
      @can_move_children_out_of_team_drive : Bool? = nil,
      @can_move_children_within_drive : Bool? = nil,
      @can_move_children_within_team_drive : Bool? = nil,
      @can_move_item_into_team_drive : Bool? = nil,
      @can_move_item_out_of_drive : Bool? = nil,
      @can_move_item_out_of_team_drive : Bool? = nil,
      @can_move_item_within_drive : Bool? = nil,
      @can_move_item_within_team_drive : Bool? = nil,
      @can_move_team_drive_item : Bool? = nil,
      @can_read_drive : Bool? = nil,
      @can_read_labels : Bool? = nil,
      @can_read_revisions : Bool? = nil,
      @can_read_team_drive : Bool? = nil,
      @can_remove_children : Bool? = nil,
      @can_remove_my_drive_parent : Bool? = nil,
      @can_rename : Bool? = nil,
      @can_share : Bool? = nil,
      @can_trash : Bool? = nil,
      @can_trash_children : Bool? = nil,
      @can_untrash : Bool? = nil
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
    # @param [Object] can_accept_ownership Object to be assigned
    def can_accept_ownership=(new_value : Bool?)
      @can_accept_ownership = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_add_children Object to be assigned
    def can_add_children=(new_value : Bool?)
      @can_add_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_add_folder_from_another_drive Object to be assigned
    def can_add_folder_from_another_drive=(new_value : Bool?)
      @can_add_folder_from_another_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_add_my_drive_parent Object to be assigned
    def can_add_my_drive_parent=(new_value : Bool?)
      @can_add_my_drive_parent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_copy_requires_writer_permission Object to be assigned
    def can_change_copy_requires_writer_permission=(new_value : Bool?)
      @can_change_copy_requires_writer_permission = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_security_update_enabled Object to be assigned
    def can_change_security_update_enabled=(new_value : Bool?)
      @can_change_security_update_enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_change_viewers_can_copy_content Object to be assigned
    def can_change_viewers_can_copy_content=(new_value : Bool?)
      @can_change_viewers_can_copy_content = new_value
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
    # @param [Object] can_delete Object to be assigned
    def can_delete=(new_value : Bool?)
      @can_delete = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_delete_children Object to be assigned
    def can_delete_children=(new_value : Bool?)
      @can_delete_children = new_value
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
    # @param [Object] can_modify_content Object to be assigned
    def can_modify_content=(new_value : Bool?)
      @can_modify_content = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_modify_content_restriction Object to be assigned
    def can_modify_content_restriction=(new_value : Bool?)
      @can_modify_content_restriction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_modify_labels Object to be assigned
    def can_modify_labels=(new_value : Bool?)
      @can_modify_labels = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_children_out_of_drive Object to be assigned
    def can_move_children_out_of_drive=(new_value : Bool?)
      @can_move_children_out_of_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_children_out_of_team_drive Object to be assigned
    def can_move_children_out_of_team_drive=(new_value : Bool?)
      @can_move_children_out_of_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_children_within_drive Object to be assigned
    def can_move_children_within_drive=(new_value : Bool?)
      @can_move_children_within_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_children_within_team_drive Object to be assigned
    def can_move_children_within_team_drive=(new_value : Bool?)
      @can_move_children_within_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_item_into_team_drive Object to be assigned
    def can_move_item_into_team_drive=(new_value : Bool?)
      @can_move_item_into_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_item_out_of_drive Object to be assigned
    def can_move_item_out_of_drive=(new_value : Bool?)
      @can_move_item_out_of_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_item_out_of_team_drive Object to be assigned
    def can_move_item_out_of_team_drive=(new_value : Bool?)
      @can_move_item_out_of_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_item_within_drive Object to be assigned
    def can_move_item_within_drive=(new_value : Bool?)
      @can_move_item_within_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_item_within_team_drive Object to be assigned
    def can_move_item_within_team_drive=(new_value : Bool?)
      @can_move_item_within_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_move_team_drive_item Object to be assigned
    def can_move_team_drive_item=(new_value : Bool?)
      @can_move_team_drive_item = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_read_drive Object to be assigned
    def can_read_drive=(new_value : Bool?)
      @can_read_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_read_labels Object to be assigned
    def can_read_labels=(new_value : Bool?)
      @can_read_labels = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_read_revisions Object to be assigned
    def can_read_revisions=(new_value : Bool?)
      @can_read_revisions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_read_team_drive Object to be assigned
    def can_read_team_drive=(new_value : Bool?)
      @can_read_team_drive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_remove_children Object to be assigned
    def can_remove_children=(new_value : Bool?)
      @can_remove_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_remove_my_drive_parent Object to be assigned
    def can_remove_my_drive_parent=(new_value : Bool?)
      @can_remove_my_drive_parent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_rename Object to be assigned
    def can_rename=(new_value : Bool?)
      @can_rename = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_share Object to be assigned
    def can_share=(new_value : Bool?)
      @can_share = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_trash Object to be assigned
    def can_trash=(new_value : Bool?)
      @can_trash = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_trash_children Object to be assigned
    def can_trash_children=(new_value : Bool?)
      @can_trash_children = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] can_untrash Object to be assigned
    def can_untrash=(new_value : Bool?)
      @can_untrash = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@can_accept_ownership, @can_add_children, @can_add_folder_from_another_drive, @can_add_my_drive_parent, @can_change_copy_requires_writer_permission, @can_change_security_update_enabled, @can_change_viewers_can_copy_content, @can_comment, @can_copy, @can_delete, @can_delete_children, @can_download, @can_edit, @can_list_children, @can_modify_content, @can_modify_content_restriction, @can_modify_labels, @can_move_children_out_of_drive, @can_move_children_out_of_team_drive, @can_move_children_within_drive, @can_move_children_within_team_drive, @can_move_item_into_team_drive, @can_move_item_out_of_drive, @can_move_item_out_of_team_drive, @can_move_item_within_drive, @can_move_item_within_team_drive, @can_move_team_drive_item, @can_read_drive, @can_read_labels, @can_read_revisions, @can_read_team_drive, @can_remove_children, @can_remove_my_drive_parent, @can_rename, @can_share, @can_trash, @can_trash_children, @can_untrash)
  end
end
