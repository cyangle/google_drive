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
  # The metadata for a file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class File
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
    @[JSON::Field(key: "appProperties", type: Hash(String, String)?, presence: true, ignore_serialize: app_properties.nil? && !app_properties_present?)]
    property app_properties : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? app_properties_present : Bool = false

    @[JSON::Field(key: "capabilities", type: FileCapabilities?, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    property capabilities : FileCapabilities?

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

    @[JSON::Field(key: "contentHints", type: FileContentHints?, presence: true, ignore_serialize: content_hints.nil? && !content_hints_present?)]
    property content_hints : FileContentHints?

    @[JSON::Field(ignore: true)]
    property? content_hints_present : Bool = false

    # Restrictions for accessing the content of the file. Only populated if such a restriction exists.
    @[JSON::Field(key: "contentRestrictions", type: Array(ContentRestriction)?, presence: true, ignore_serialize: content_restrictions.nil? && !content_restrictions_present?)]
    property content_restrictions : Array(ContentRestriction)?

    @[JSON::Field(ignore: true)]
    property? content_restrictions_present : Bool = false

    # Whether the options to copy, print, or download this file, should be disabled for readers and commenters.
    @[JSON::Field(key: "copyRequiresWriterPermission", type: Bool?, presence: true, ignore_serialize: copy_requires_writer_permission.nil? && !copy_requires_writer_permission_present?)]
    property copy_requires_writer_permission : Bool?

    @[JSON::Field(ignore: true)]
    property? copy_requires_writer_permission_present : Bool = false

    # The time at which the file was created (RFC 3339 date-time).
    @[JSON::Field(key: "createdTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: created_time.nil? && !created_time_present?)]
    property created_time : Time?

    @[JSON::Field(ignore: true)]
    property? created_time_present : Bool = false

    # A short description of the file.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    property description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # ID of the shared drive the file resides in. Only populated for items in shared drives.
    @[JSON::Field(key: "driveId", type: String?, presence: true, ignore_serialize: drive_id.nil? && !drive_id_present?)]
    property drive_id : String?

    @[JSON::Field(ignore: true)]
    property? drive_id_present : Bool = false

    # Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder.
    @[JSON::Field(key: "explicitlyTrashed", type: Bool?, presence: true, ignore_serialize: explicitly_trashed.nil? && !explicitly_trashed_present?)]
    property explicitly_trashed : Bool?

    @[JSON::Field(ignore: true)]
    property? explicitly_trashed_present : Bool = false

    # Links for exporting Docs Editors files to specific formats.
    @[JSON::Field(key: "exportLinks", type: Hash(String, String)?, presence: true, ignore_serialize: export_links.nil? && !export_links_present?)]
    property export_links : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? export_links_present : Bool = false

    # The final component of fullFileExtension. This is only available for files with binary content in Google Drive.
    @[JSON::Field(key: "fileExtension", type: String?, presence: true, ignore_serialize: file_extension.nil? && !file_extension_present?)]
    property file_extension : String?

    @[JSON::Field(ignore: true)]
    property? file_extension_present : Bool = false

    # The color for a folder or shortcut to a folder as an RGB hex string. The supported colors are published in the folderColorPalette field of the About resource. If an unsupported color is specified, the closest color in the palette will be used instead.
    @[JSON::Field(key: "folderColorRgb", type: String?, presence: true, ignore_serialize: folder_color_rgb.nil? && !folder_color_rgb_present?)]
    property folder_color_rgb : String?

    @[JSON::Field(ignore: true)]
    property? folder_color_rgb_present : Bool = false

    # The full file extension extracted from the name field. May contain multiple concatenated extensions, such as \"tar.gz\". This is only available for files with binary content in Google Drive. This is automatically updated when the name field changes, however it is not cleared if the new name does not contain a valid extension.
    @[JSON::Field(key: "fullFileExtension", type: String?, presence: true, ignore_serialize: full_file_extension.nil? && !full_file_extension_present?)]
    property full_file_extension : String?

    @[JSON::Field(ignore: true)]
    property? full_file_extension_present : Bool = false

    # Whether there are permissions directly on this file. This field is only populated for items in shared drives.
    @[JSON::Field(key: "hasAugmentedPermissions", type: Bool?, presence: true, ignore_serialize: has_augmented_permissions.nil? && !has_augmented_permissions_present?)]
    property has_augmented_permissions : Bool?

    @[JSON::Field(ignore: true)]
    property? has_augmented_permissions_present : Bool = false

    # Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.
    @[JSON::Field(key: "hasThumbnail", type: Bool?, presence: true, ignore_serialize: has_thumbnail.nil? && !has_thumbnail_present?)]
    property has_thumbnail : Bool?

    @[JSON::Field(ignore: true)]
    property? has_thumbnail_present : Bool = false

    # The ID of the file's head revision. This is currently only available for files with binary content in Google Drive.
    @[JSON::Field(key: "headRevisionId", type: String?, presence: true, ignore_serialize: head_revision_id.nil? && !head_revision_id_present?)]
    property head_revision_id : String?

    @[JSON::Field(ignore: true)]
    property? head_revision_id_present : Bool = false

    # A static, unauthenticated link to the file's icon.
    @[JSON::Field(key: "iconLink", type: String?, presence: true, ignore_serialize: icon_link.nil? && !icon_link_present?)]
    property icon_link : String?

    @[JSON::Field(ignore: true)]
    property? icon_link_present : Bool = false

    # The ID of the file.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    @[JSON::Field(key: "imageMediaMetadata", type: FileImageMediaMetadata?, presence: true, ignore_serialize: image_media_metadata.nil? && !image_media_metadata_present?)]
    property image_media_metadata : FileImageMediaMetadata?

    @[JSON::Field(ignore: true)]
    property? image_media_metadata_present : Bool = false

    # Whether the file was created or opened by the requesting app.
    @[JSON::Field(key: "isAppAuthorized", type: Bool?, presence: true, ignore_serialize: is_app_authorized.nil? && !is_app_authorized_present?)]
    property is_app_authorized : Bool?

    @[JSON::Field(ignore: true)]
    property? is_app_authorized_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#file\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#file", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "drive#file"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    @[JSON::Field(key: "lastModifyingUser", type: User?, presence: true, ignore_serialize: last_modifying_user.nil? && !last_modifying_user_present?)]
    property last_modifying_user : User?

    @[JSON::Field(ignore: true)]
    property? last_modifying_user_present : Bool = false

    @[JSON::Field(key: "linkShareMetadata", type: FileLinkShareMetadata?, presence: true, ignore_serialize: link_share_metadata.nil? && !link_share_metadata_present?)]
    property link_share_metadata : FileLinkShareMetadata?

    @[JSON::Field(ignore: true)]
    property? link_share_metadata_present : Bool = false

    # The MD5 checksum for the content of the file. This is only applicable to files with binary content in Google Drive.
    @[JSON::Field(key: "md5Checksum", type: String?, presence: true, ignore_serialize: md5_checksum.nil? && !md5_checksum_present?)]
    property md5_checksum : String?

    @[JSON::Field(ignore: true)]
    property? md5_checksum_present : Bool = false

    # The MIME type of the file. Google Drive will attempt to automatically detect an appropriate value from uploaded content if no value is provided. The value cannot be changed unless a new revision is uploaded. If a file is created with a Google Doc MIME type, the uploaded content will be imported if possible. The supported import formats are published in the About resource.
    @[JSON::Field(key: "mimeType", type: String?, presence: true, ignore_serialize: mime_type.nil? && !mime_type_present?)]
    property mime_type : String?

    @[JSON::Field(ignore: true)]
    property? mime_type_present : Bool = false

    # Whether the file has been modified by this user.
    @[JSON::Field(key: "modifiedByMe", type: Bool?, presence: true, ignore_serialize: modified_by_me.nil? && !modified_by_me_present?)]
    property modified_by_me : Bool?

    @[JSON::Field(ignore: true)]
    property? modified_by_me_present : Bool = false

    # The last time the file was modified by the user (RFC 3339 date-time).
    @[JSON::Field(key: "modifiedByMeTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: modified_by_me_time.nil? && !modified_by_me_time_present?)]
    property modified_by_me_time : Time?

    @[JSON::Field(ignore: true)]
    property? modified_by_me_time_present : Bool = false

    # The last time the file was modified by anyone (RFC 3339 date-time). Note that setting modifiedTime will also update modifiedByMeTime for the user.
    @[JSON::Field(key: "modifiedTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: modified_time.nil? && !modified_time_present?)]
    property modified_time : Time?

    @[JSON::Field(ignore: true)]
    property? modified_time_present : Bool = false

    # The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the name is constant.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    property name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The original filename of the uploaded content if available, or else the original value of the name field. This is only available for files with binary content in Google Drive.
    @[JSON::Field(key: "originalFilename", type: String?, presence: true, ignore_serialize: original_filename.nil? && !original_filename_present?)]
    property original_filename : String?

    @[JSON::Field(ignore: true)]
    property? original_filename_present : Bool = false

    # Whether the user owns the file. Not populated for items in shared drives.
    @[JSON::Field(key: "ownedByMe", type: Bool?, presence: true, ignore_serialize: owned_by_me.nil? && !owned_by_me_present?)]
    property owned_by_me : Bool?

    @[JSON::Field(ignore: true)]
    property? owned_by_me_present : Bool = false

    # The owner of this file. Only certain legacy files may have more than one owner. This field isn't populated for items in shared drives.
    @[JSON::Field(key: "owners", type: Array(User)?, presence: true, ignore_serialize: owners.nil? && !owners_present?)]
    property owners : Array(User)?

    @[JSON::Field(ignore: true)]
    property? owners_present : Bool = false

    # The IDs of the parent folders which contain the file. If not specified as part of a create request, the file will be placed directly in the user's My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests must use the addParents and removeParents parameters to modify the parents list.
    @[JSON::Field(key: "parents", type: Array(String)?, presence: true, ignore_serialize: parents.nil? && !parents_present?)]
    property parents : Array(String)?

    @[JSON::Field(ignore: true)]
    property? parents_present : Bool = false

    # List of permission IDs for users with access to this file.
    @[JSON::Field(key: "permissionIds", type: Array(String)?, presence: true, ignore_serialize: permission_ids.nil? && !permission_ids_present?)]
    property permission_ids : Array(String)?

    @[JSON::Field(ignore: true)]
    property? permission_ids_present : Bool = false

    # The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for items in shared drives.
    @[JSON::Field(key: "permissions", type: Array(Permission)?, presence: true, ignore_serialize: permissions.nil? && !permissions_present?)]
    property permissions : Array(Permission)?

    @[JSON::Field(ignore: true)]
    property? permissions_present : Bool = false

    # A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests.
    @[JSON::Field(key: "properties", type: Hash(String, String)?, presence: true, ignore_serialize: properties.nil? && !properties_present?)]
    property properties : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? properties_present : Bool = false

    # The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with keepForever enabled.
    @[JSON::Field(key: "quotaBytesUsed", type: String?, presence: true, ignore_serialize: quota_bytes_used.nil? && !quota_bytes_used_present?)]
    property quota_bytes_used : String?

    @[JSON::Field(ignore: true)]
    property? quota_bytes_used_present : Bool = false

    # A key needed to access the item via a shared link.
    @[JSON::Field(key: "resourceKey", type: String?, presence: true, ignore_serialize: resource_key.nil? && !resource_key_present?)]
    property resource_key : String?

    @[JSON::Field(ignore: true)]
    property? resource_key_present : Bool = false

    # Whether the file has been shared. Not populated for items in shared drives.
    @[JSON::Field(key: "shared", type: Bool?, presence: true, ignore_serialize: shared.nil? && !shared_present?)]
    property shared : Bool?

    @[JSON::Field(ignore: true)]
    property? shared_present : Bool = false

    # The time at which the file was shared with the user, if applicable (RFC 3339 date-time).
    @[JSON::Field(key: "sharedWithMeTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: shared_with_me_time.nil? && !shared_with_me_time_present?)]
    property shared_with_me_time : Time?

    @[JSON::Field(ignore: true)]
    property? shared_with_me_time_present : Bool = false

    @[JSON::Field(key: "sharingUser", type: User?, presence: true, ignore_serialize: sharing_user.nil? && !sharing_user_present?)]
    property sharing_user : User?

    @[JSON::Field(ignore: true)]
    property? sharing_user_present : Bool = false

    @[JSON::Field(key: "shortcutDetails", type: FileShortcutDetails?, presence: true, ignore_serialize: shortcut_details.nil? && !shortcut_details_present?)]
    property shortcut_details : FileShortcutDetails?

    @[JSON::Field(ignore: true)]
    property? shortcut_details_present : Bool = false

    # The size of the file's content in bytes. This is applicable to binary files in Google Drive and Google Docs files.
    @[JSON::Field(key: "size", type: String?, presence: true, ignore_serialize: size.nil? && !size_present?)]
    property size : String?

    @[JSON::Field(ignore: true)]
    property? size_present : Bool = false

    # The list of spaces which contain the file. The currently supported values are 'drive', 'appDataFolder' and 'photos'.
    @[JSON::Field(key: "spaces", type: Array(String)?, presence: true, ignore_serialize: spaces.nil? && !spaces_present?)]
    property spaces : Array(String)?

    @[JSON::Field(ignore: true)]
    property? spaces_present : Bool = false

    # Whether the user has starred the file.
    @[JSON::Field(key: "starred", type: Bool?, presence: true, ignore_serialize: starred.nil? && !starred_present?)]
    property starred : Bool?

    @[JSON::Field(ignore: true)]
    property? starred_present : Bool = false

    # Deprecated - use driveId instead.
    @[JSON::Field(key: "teamDriveId", type: String?, presence: true, ignore_serialize: team_drive_id.nil? && !team_drive_id_present?)]
    property team_drive_id : String?

    @[JSON::Field(ignore: true)]
    property? team_drive_id_present : Bool = false

    # A short-lived link to the file's thumbnail, if available. Typically lasts on the order of hours. Only populated when the requesting app can access the file's content. If the file isn't shared publicly, the URL returned in Files.thumbnailLink must be fetched using a credentialed request.
    @[JSON::Field(key: "thumbnailLink", type: String?, presence: true, ignore_serialize: thumbnail_link.nil? && !thumbnail_link_present?)]
    property thumbnail_link : String?

    @[JSON::Field(ignore: true)]
    property? thumbnail_link_present : Bool = false

    # The thumbnail version for use in thumbnail cache invalidation.
    @[JSON::Field(key: "thumbnailVersion", type: String?, presence: true, ignore_serialize: thumbnail_version.nil? && !thumbnail_version_present?)]
    property thumbnail_version : String?

    @[JSON::Field(ignore: true)]
    property? thumbnail_version_present : Bool = false

    # Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.
    @[JSON::Field(key: "trashed", type: Bool?, presence: true, ignore_serialize: trashed.nil? && !trashed_present?)]
    property trashed : Bool?

    @[JSON::Field(ignore: true)]
    property? trashed_present : Bool = false

    # The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives.
    @[JSON::Field(key: "trashedTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: trashed_time.nil? && !trashed_time_present?)]
    property trashed_time : Time?

    @[JSON::Field(ignore: true)]
    property? trashed_time_present : Bool = false

    @[JSON::Field(key: "trashingUser", type: User?, presence: true, ignore_serialize: trashing_user.nil? && !trashing_user_present?)]
    property trashing_user : User?

    @[JSON::Field(ignore: true)]
    property? trashing_user_present : Bool = false

    # A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user.
    @[JSON::Field(key: "version", type: String?, presence: true, ignore_serialize: version.nil? && !version_present?)]
    property version : String?

    @[JSON::Field(ignore: true)]
    property? version_present : Bool = false

    @[JSON::Field(key: "videoMediaMetadata", type: FileVideoMediaMetadata?, presence: true, ignore_serialize: video_media_metadata.nil? && !video_media_metadata_present?)]
    property video_media_metadata : FileVideoMediaMetadata?

    @[JSON::Field(ignore: true)]
    property? video_media_metadata_present : Bool = false

    # Whether the file has been viewed by this user.
    @[JSON::Field(key: "viewedByMe", type: Bool?, presence: true, ignore_serialize: viewed_by_me.nil? && !viewed_by_me_present?)]
    property viewed_by_me : Bool?

    @[JSON::Field(ignore: true)]
    property? viewed_by_me_present : Bool = false

    # The last time the file was viewed by the user (RFC 3339 date-time).
    @[JSON::Field(key: "viewedByMeTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: viewed_by_me_time.nil? && !viewed_by_me_time_present?)]
    property viewed_by_me_time : Time?

    @[JSON::Field(ignore: true)]
    property? viewed_by_me_time_present : Bool = false

    # Deprecated - use copyRequiresWriterPermission instead.
    @[JSON::Field(key: "viewersCanCopyContent", type: Bool?, presence: true, ignore_serialize: viewers_can_copy_content.nil? && !viewers_can_copy_content_present?)]
    property viewers_can_copy_content : Bool?

    @[JSON::Field(ignore: true)]
    property? viewers_can_copy_content_present : Bool = false

    # A link for downloading the content of the file in a browser. This is only available for files with binary content in Google Drive.
    @[JSON::Field(key: "webContentLink", type: String?, presence: true, ignore_serialize: web_content_link.nil? && !web_content_link_present?)]
    property web_content_link : String?

    @[JSON::Field(ignore: true)]
    property? web_content_link_present : Bool = false

    # A link for opening the file in a relevant Google editor or viewer in a browser.
    @[JSON::Field(key: "webViewLink", type: String?, presence: true, ignore_serialize: web_view_link.nil? && !web_view_link_present?)]
    property web_view_link : String?

    @[JSON::Field(ignore: true)]
    property? web_view_link_present : Bool = false

    # Whether users with only writer permission can modify the file's permissions. Not populated for items in shared drives.
    @[JSON::Field(key: "writersCanShare", type: Bool?, presence: true, ignore_serialize: writers_can_share.nil? && !writers_can_share_present?)]
    property writers_can_share : Bool?

    @[JSON::Field(ignore: true)]
    property? writers_can_share_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @app_properties : Hash(String, String)? = nil,
      @capabilities : FileCapabilities? = nil,
      @content_hints : FileContentHints? = nil,
      @content_restrictions : Array(ContentRestriction)? = nil,
      @copy_requires_writer_permission : Bool? = nil,
      @created_time : Time? = nil,
      @description : String? = nil,
      @drive_id : String? = nil,
      @explicitly_trashed : Bool? = nil,
      @export_links : Hash(String, String)? = nil,
      @file_extension : String? = nil,
      @folder_color_rgb : String? = nil,
      @full_file_extension : String? = nil,
      @has_augmented_permissions : Bool? = nil,
      @has_thumbnail : Bool? = nil,
      @head_revision_id : String? = nil,
      @icon_link : String? = nil,
      @id : String? = nil,
      @image_media_metadata : FileImageMediaMetadata? = nil,
      @is_app_authorized : Bool? = nil,
      @kind : String? = "drive#file",
      @last_modifying_user : User? = nil,
      @link_share_metadata : FileLinkShareMetadata? = nil,
      @md5_checksum : String? = nil,
      @mime_type : String? = nil,
      @modified_by_me : Bool? = nil,
      @modified_by_me_time : Time? = nil,
      @modified_time : Time? = nil,
      @name : String? = nil,
      @original_filename : String? = nil,
      @owned_by_me : Bool? = nil,
      @owners : Array(User)? = nil,
      @parents : Array(String)? = nil,
      @permission_ids : Array(String)? = nil,
      @permissions : Array(Permission)? = nil,
      @properties : Hash(String, String)? = nil,
      @quota_bytes_used : String? = nil,
      @resource_key : String? = nil,
      @shared : Bool? = nil,
      @shared_with_me_time : Time? = nil,
      @sharing_user : User? = nil,
      @shortcut_details : FileShortcutDetails? = nil,
      @size : String? = nil,
      @spaces : Array(String)? = nil,
      @starred : Bool? = nil,
      @team_drive_id : String? = nil,
      @thumbnail_link : String? = nil,
      @thumbnail_version : String? = nil,
      @trashed : Bool? = nil,
      @trashed_time : Time? = nil,
      @trashing_user : User? = nil,
      @version : String? = nil,
      @video_media_metadata : FileVideoMediaMetadata? = nil,
      @viewed_by_me : Bool? = nil,
      @viewed_by_me_time : Time? = nil,
      @viewers_can_copy_content : Bool? = nil,
      @web_content_link : String? = nil,
      @web_view_link : String? = nil,
      @writers_can_share : Bool? = nil
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
    def_equals_and_hash(@app_properties, @app_properties_present, @capabilities, @capabilities_present, @content_hints, @content_hints_present, @content_restrictions, @content_restrictions_present, @copy_requires_writer_permission, @copy_requires_writer_permission_present, @created_time, @created_time_present, @description, @description_present, @drive_id, @drive_id_present, @explicitly_trashed, @explicitly_trashed_present, @export_links, @export_links_present, @file_extension, @file_extension_present, @folder_color_rgb, @folder_color_rgb_present, @full_file_extension, @full_file_extension_present, @has_augmented_permissions, @has_augmented_permissions_present, @has_thumbnail, @has_thumbnail_present, @head_revision_id, @head_revision_id_present, @icon_link, @icon_link_present, @id, @id_present, @image_media_metadata, @image_media_metadata_present, @is_app_authorized, @is_app_authorized_present, @kind, @kind_present, @last_modifying_user, @last_modifying_user_present, @link_share_metadata, @link_share_metadata_present, @md5_checksum, @md5_checksum_present, @mime_type, @mime_type_present, @modified_by_me, @modified_by_me_present, @modified_by_me_time, @modified_by_me_time_present, @modified_time, @modified_time_present, @name, @name_present, @original_filename, @original_filename_present, @owned_by_me, @owned_by_me_present, @owners, @owners_present, @parents, @parents_present, @permission_ids, @permission_ids_present, @permissions, @permissions_present, @properties, @properties_present, @quota_bytes_used, @quota_bytes_used_present, @resource_key, @resource_key_present, @shared, @shared_present, @shared_with_me_time, @shared_with_me_time_present, @sharing_user, @sharing_user_present, @shortcut_details, @shortcut_details_present, @size, @size_present, @spaces, @spaces_present, @starred, @starred_present, @team_drive_id, @team_drive_id_present, @thumbnail_link, @thumbnail_link_present, @thumbnail_version, @thumbnail_version_present, @trashed, @trashed_present, @trashed_time, @trashed_time_present, @trashing_user, @trashing_user_present, @version, @version_present, @video_media_metadata, @video_media_metadata_present, @viewed_by_me, @viewed_by_me_present, @viewed_by_me_time, @viewed_by_me_time_present, @viewers_can_copy_content, @viewers_can_copy_content_present, @web_content_link, @web_content_link_present, @web_view_link, @web_view_link_present, @writers_can_share, @writers_can_share_present)
  end
end
