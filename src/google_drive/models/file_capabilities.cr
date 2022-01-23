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
  # Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
  class FileCapabilities
    include NASON::Serializable

    # Optional properties
    # Whether the current user can add children to this folder. This is always false when the item is not a folder.
    @[NASON::Field(key: "canAddChildren", type: Bool?, nillable: true)]
    property can_add_children : Bool?

    # Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[NASON::Field(key: "canAddFolderFromAnotherDrive", type: Bool?, nillable: true)]
    property can_add_folder_from_another_drive : Bool?

    # Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.
    @[NASON::Field(key: "canAddMyDriveParent", type: Bool?, nillable: true)]
    property can_add_my_drive_parent : Bool?

    # Whether the current user can change the copyRequiresWriterPermission restriction of this file.
    @[NASON::Field(key: "canChangeCopyRequiresWriterPermission", type: Bool?, nillable: true)]
    property can_change_copy_requires_writer_permission : Bool?

    # Whether the current user can change the securityUpdateEnabled field on link share metadata.
    @[NASON::Field(key: "canChangeSecurityUpdateEnabled", type: Bool?, nillable: true)]
    property can_change_security_update_enabled : Bool?

    # Deprecated
    @[NASON::Field(key: "canChangeViewersCanCopyContent", type: Bool?, nillable: true)]
    property can_change_viewers_can_copy_content : Bool?

    # Whether the current user can comment on this file.
    @[NASON::Field(key: "canComment", type: Bool?, nillable: true)]
    property can_comment : Bool?

    # Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.
    @[NASON::Field(key: "canCopy", type: Bool?, nillable: true)]
    property can_copy : Bool?

    # Whether the current user can delete this file.
    @[NASON::Field(key: "canDelete", type: Bool?, nillable: true)]
    property can_delete : Bool?

    # Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[NASON::Field(key: "canDeleteChildren", type: Bool?, nillable: true)]
    property can_delete_children : Bool?

    # Whether the current user can download this file.
    @[NASON::Field(key: "canDownload", type: Bool?, nillable: true)]
    property can_download : Bool?

    # Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see canChangeCopyRequiresWriterPermission or canModifyContent.
    @[NASON::Field(key: "canEdit", type: Bool?, nillable: true)]
    property can_edit : Bool?

    # Whether the current user can list the children of this folder. This is always false when the item is not a folder.
    @[NASON::Field(key: "canListChildren", type: Bool?, nillable: true)]
    property can_list_children : Bool?

    # Whether the current user can modify the content of this file.
    @[NASON::Field(key: "canModifyContent", type: Bool?, nillable: true)]
    property can_modify_content : Bool?

    # Whether the current user can modify restrictions on content of this file.
    @[NASON::Field(key: "canModifyContentRestriction", type: Bool?, nillable: true)]
    property can_modify_content_restriction : Bool?

    # Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.
    @[NASON::Field(key: "canMoveChildrenOutOfDrive", type: Bool?, nillable: true)]
    property can_move_children_out_of_drive : Bool?

    # Deprecated - use canMoveChildrenOutOfDrive instead.
    @[NASON::Field(key: "canMoveChildrenOutOfTeamDrive", type: Bool?, nillable: true)]
    property can_move_children_out_of_team_drive : Bool?

    # Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user's access to the child and to the destination folder.
    @[NASON::Field(key: "canMoveChildrenWithinDrive", type: Bool?, nillable: true)]
    property can_move_children_within_drive : Bool?

    # Deprecated - use canMoveChildrenWithinDrive instead.
    @[NASON::Field(key: "canMoveChildrenWithinTeamDrive", type: Bool?, nillable: true)]
    property can_move_children_within_team_drive : Bool?

    # Deprecated - use canMoveItemOutOfDrive instead.
    @[NASON::Field(key: "canMoveItemIntoTeamDrive", type: Bool?, nillable: true)]
    property can_move_item_into_team_drive : Bool?

    # Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.
    @[NASON::Field(key: "canMoveItemOutOfDrive", type: Bool?, nillable: true)]
    property can_move_item_out_of_drive : Bool?

    # Deprecated - use canMoveItemOutOfDrive instead.
    @[NASON::Field(key: "canMoveItemOutOfTeamDrive", type: Bool?, nillable: true)]
    property can_move_item_out_of_team_drive : Bool?

    # Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.
    @[NASON::Field(key: "canMoveItemWithinDrive", type: Bool?, nillable: true)]
    property can_move_item_within_drive : Bool?

    # Deprecated - use canMoveItemWithinDrive instead.
    @[NASON::Field(key: "canMoveItemWithinTeamDrive", type: Bool?, nillable: true)]
    property can_move_item_within_team_drive : Bool?

    # Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.
    @[NASON::Field(key: "canMoveTeamDriveItem", type: Bool?, nillable: true)]
    property can_move_team_drive_item : Bool?

    # Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.
    @[NASON::Field(key: "canReadDrive", type: Bool?, nillable: true)]
    property can_read_drive : Bool?

    # Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it is not a folder, can be read.
    @[NASON::Field(key: "canReadRevisions", type: Bool?, nillable: true)]
    property can_read_revisions : Bool?

    # Deprecated - use canReadDrive instead.
    @[NASON::Field(key: "canReadTeamDrive", type: Bool?, nillable: true)]
    property can_read_team_drive : Bool?

    # Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use canDeleteChildren or canTrashChildren instead.
    @[NASON::Field(key: "canRemoveChildren", type: Bool?, nillable: true)]
    property can_remove_children : Bool?

    # Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.
    @[NASON::Field(key: "canRemoveMyDriveParent", type: Bool?, nillable: true)]
    property can_remove_my_drive_parent : Bool?

    # Whether the current user can rename this file.
    @[NASON::Field(key: "canRename", type: Bool?, nillable: true)]
    property can_rename : Bool?

    # Whether the current user can modify the sharing settings for this file.
    @[NASON::Field(key: "canShare", type: Bool?, nillable: true)]
    property can_share : Bool?

    # Whether the current user can move this file to trash.
    @[NASON::Field(key: "canTrash", type: Bool?, nillable: true)]
    property can_trash : Bool?

    # Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    @[NASON::Field(key: "canTrashChildren", type: Bool?, nillable: true)]
    property can_trash_children : Bool?

    # Whether the current user can restore this file from trash.
    @[NASON::Field(key: "canUntrash", type: Bool?, nillable: true)]
    property can_untrash : Bool?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @can_add_children : Bool? = nil, @can_add_folder_from_another_drive : Bool? = nil, @can_add_my_drive_parent : Bool? = nil, @can_change_copy_requires_writer_permission : Bool? = nil, @can_change_security_update_enabled : Bool? = nil, @can_change_viewers_can_copy_content : Bool? = nil, @can_comment : Bool? = nil, @can_copy : Bool? = nil, @can_delete : Bool? = nil, @can_delete_children : Bool? = nil, @can_download : Bool? = nil, @can_edit : Bool? = nil, @can_list_children : Bool? = nil, @can_modify_content : Bool? = nil, @can_modify_content_restriction : Bool? = nil, @can_move_children_out_of_drive : Bool? = nil, @can_move_children_out_of_team_drive : Bool? = nil, @can_move_children_within_drive : Bool? = nil, @can_move_children_within_team_drive : Bool? = nil, @can_move_item_into_team_drive : Bool? = nil, @can_move_item_out_of_drive : Bool? = nil, @can_move_item_out_of_team_drive : Bool? = nil, @can_move_item_within_drive : Bool? = nil, @can_move_item_within_team_drive : Bool? = nil, @can_move_team_drive_item : Bool? = nil, @can_read_drive : Bool? = nil, @can_read_revisions : Bool? = nil, @can_read_team_drive : Bool? = nil, @can_remove_children : Bool? = nil, @can_remove_my_drive_parent : Bool? = nil, @can_rename : Bool? = nil, @can_share : Bool? = nil, @can_trash : Bool? = nil, @can_trash_children : Bool? = nil, @can_untrash : Bool? = nil)
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
        can_add_children == o.can_add_children &&
        can_add_folder_from_another_drive == o.can_add_folder_from_another_drive &&
        can_add_my_drive_parent == o.can_add_my_drive_parent &&
        can_change_copy_requires_writer_permission == o.can_change_copy_requires_writer_permission &&
        can_change_security_update_enabled == o.can_change_security_update_enabled &&
        can_change_viewers_can_copy_content == o.can_change_viewers_can_copy_content &&
        can_comment == o.can_comment &&
        can_copy == o.can_copy &&
        can_delete == o.can_delete &&
        can_delete_children == o.can_delete_children &&
        can_download == o.can_download &&
        can_edit == o.can_edit &&
        can_list_children == o.can_list_children &&
        can_modify_content == o.can_modify_content &&
        can_modify_content_restriction == o.can_modify_content_restriction &&
        can_move_children_out_of_drive == o.can_move_children_out_of_drive &&
        can_move_children_out_of_team_drive == o.can_move_children_out_of_team_drive &&
        can_move_children_within_drive == o.can_move_children_within_drive &&
        can_move_children_within_team_drive == o.can_move_children_within_team_drive &&
        can_move_item_into_team_drive == o.can_move_item_into_team_drive &&
        can_move_item_out_of_drive == o.can_move_item_out_of_drive &&
        can_move_item_out_of_team_drive == o.can_move_item_out_of_team_drive &&
        can_move_item_within_drive == o.can_move_item_within_drive &&
        can_move_item_within_team_drive == o.can_move_item_within_team_drive &&
        can_move_team_drive_item == o.can_move_team_drive_item &&
        can_read_drive == o.can_read_drive &&
        can_read_revisions == o.can_read_revisions &&
        can_read_team_drive == o.can_read_team_drive &&
        can_remove_children == o.can_remove_children &&
        can_remove_my_drive_parent == o.can_remove_my_drive_parent &&
        can_rename == o.can_rename &&
        can_share == o.can_share &&
        can_trash == o.can_trash &&
        can_trash_children == o.can_trash_children &&
        can_untrash == o.can_untrash
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [can_add_children, can_add_folder_from_another_drive, can_add_my_drive_parent, can_change_copy_requires_writer_permission, can_change_security_update_enabled, can_change_viewers_can_copy_content, can_comment, can_copy, can_delete, can_delete_children, can_download, can_edit, can_list_children, can_modify_content, can_modify_content_restriction, can_move_children_out_of_drive, can_move_children_out_of_team_drive, can_move_children_within_drive, can_move_children_within_team_drive, can_move_item_into_team_drive, can_move_item_out_of_drive, can_move_item_out_of_team_drive, can_move_item_within_drive, can_move_item_within_team_drive, can_move_team_drive_item, can_read_drive, can_read_revisions, can_read_team_drive, can_remove_children, can_remove_my_drive_parent, can_rename, can_share, can_trash, can_trash_children, can_untrash].hash
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
