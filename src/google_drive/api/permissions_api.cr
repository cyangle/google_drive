#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "uri"

module GoogleDrive
  class PermissionsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a permission for a file or shared drive.
    # @param file_id [String] The ID of the file or shared drive.
    # @return [Permission]
    def create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, email_message : String? = nil, enforce_single_parent : Bool? = false, move_to_new_owners_root : Bool? = false, send_notification_email : Bool? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil)
      data, _status_code, _headers = create_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, email_message: email_message, enforce_single_parent: enforce_single_parent, move_to_new_owners_root: move_to_new_owners_root, send_notification_email: send_notification_email, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission)
      data
    end

    # Creates a permission for a file or shared drive.
    # @param file_id [String] The ID of the file or shared drive.
    # @return [Array<(Permission, Integer, Hash)>] Permission data, response status code and response headers
    def create_with_http_info(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, email_message : String? = nil, enforce_single_parent : Bool? = false, move_to_new_owners_root : Bool? = false, send_notification_email : Bool? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil)
      request = build_api_request_for_create(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, email_message: email_message, enforce_single_parent: enforce_single_parent, move_to_new_owners_root: move_to_new_owners_root, send_notification_email: send_notification_email, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: PermissionsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Permission.from_nason(data), status_code, headers
    end

    # Creates a permission for a file or shared drive.
    # @param file_id [String] The ID of the file or shared drive.
    # @return nil
    def create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, email_message : String? = nil, enforce_single_parent : Bool? = false, move_to_new_owners_root : Bool? = false, send_notification_email : Bool? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil, &block : Crest::Response ->)
      build_api_request_for_create(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, email_message: email_message, enforce_single_parent: enforce_single_parent, move_to_new_owners_root: move_to_new_owners_root, send_notification_email: send_notification_email, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, email_message : String? = nil, enforce_single_parent : Bool? = false, move_to_new_owners_root : Bool? = false, send_notification_email : Bool? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: PermissionsApi.create ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/permissions".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["emailMessage"] = email_message.to_s if !email_message.nil? && !email_message.null?
      query_params["enforceSingleParent"] = enforce_single_parent.to_s if !enforce_single_parent.nil? && !enforce_single_parent.null?
      query_params["moveToNewOwnersRoot"] = move_to_new_owners_root.to_s if !move_to_new_owners_root.nil? && !move_to_new_owners_root.null?
      query_params["sendNotificationEmail"] = send_notification_email.to_s if !send_notification_email.nil? && !send_notification_email.null?
      query_params["supportsAllDrives"] = supports_all_drives.to_s if !supports_all_drives.nil? && !supports_all_drives.null?
      query_params["supportsTeamDrives"] = supports_team_drives.to_s if !supports_team_drives.nil? && !supports_team_drives.null?
      query_params["transferOwnership"] = transfer_ownership.to_s if !transfer_ownership.nil? && !transfer_ownership.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = permission.to_nason

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PermissionsApi.drive_permissions_create",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Deletes a permission.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return [nil]
    def delete(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      delete_with_http_info(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)
      nil
    end

    # Deletes a permission.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      request = build_api_request_for_delete(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: PermissionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Deletes a permission.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return nil
    def delete(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false, &block : Crest::Response ->)
      build_api_request_for_delete(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: PermissionsApi.delete ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/permissions/{permissionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "permissionId" + "}", URI.encode_path(permission_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["supportsAllDrives"] = supports_all_drives.to_s if !supports_all_drives.nil? && !supports_all_drives.null?
      query_params["supportsTeamDrives"] = supports_team_drives.to_s if !supports_team_drives.nil? && !supports_team_drives.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "PermissionsApi.drive_permissions_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Gets a permission by ID.
    # @param file_id [String] The ID of the file.
    # @param permission_id [String] The ID of the permission.
    # @return [Permission]
    def get(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      data, _status_code, _headers = get_with_http_info(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Gets a permission by ID.
    # @param file_id [String] The ID of the file.
    # @param permission_id [String] The ID of the permission.
    # @return [Array<(Permission, Integer, Hash)>] Permission data, response status code and response headers
    def get_with_http_info(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      request = build_api_request_for_get(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: PermissionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Permission.from_nason(data), status_code, headers
    end

    # Gets a permission by ID.
    # @param file_id [String] The ID of the file.
    # @param permission_id [String] The ID of the permission.
    # @return nil
    def get(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false, &block : Crest::Response ->)
      build_api_request_for_get(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: PermissionsApi.get ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/permissions/{permissionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "permissionId" + "}", URI.encode_path(permission_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["supportsAllDrives"] = supports_all_drives.to_s if !supports_all_drives.nil? && !supports_all_drives.null?
      query_params["supportsTeamDrives"] = supports_team_drives.to_s if !supports_team_drives.nil? && !supports_team_drives.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "PermissionsApi.drive_permissions_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Lists a file's or shared drive's permissions.
    # @param file_id [String] The ID of the file or shared drive.
    # @return [PermissionList]
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_permissions_for_view : String? = nil, page_size : Int32? = nil, page_token : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      data, _status_code, _headers = list_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_permissions_for_view: include_permissions_for_view, page_size: page_size, page_token: page_token, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Lists a file&#39;s or shared drive&#39;s permissions.
    # @param file_id [String] The ID of the file or shared drive.
    # @return [Array<(PermissionList, Integer, Hash)>] PermissionList data, response status code and response headers
    def list_with_http_info(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_permissions_for_view : String? = nil, page_size : Int32? = nil, page_token : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false)
      request = build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_permissions_for_view: include_permissions_for_view, page_size: page_size, page_token: page_token, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: PermissionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return PermissionList.from_nason(data), status_code, headers
    end

    # Lists a file&#39;s or shared drive&#39;s permissions.
    # @param file_id [String] The ID of the file or shared drive.
    # @return nil
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_permissions_for_view : String? = nil, page_size : Int32? = nil, page_token : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false, &block : Crest::Response ->)
      build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_permissions_for_view: include_permissions_for_view, page_size: page_size, page_token: page_token, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_permissions_for_view : String? = nil, page_size : Int32? = nil, page_token : String? = nil, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, use_domain_admin_access : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: PermissionsApi.list ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 100
        raise ArgumentError.new("invalid value for \"page_size\" when calling PermissionsApi.list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 1
        raise ArgumentError.new("invalid value for \"page_size\" when calling PermissionsApi.list, must be greater than or equal to 1.")
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/permissions".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["includePermissionsForView"] = include_permissions_for_view.to_s if !include_permissions_for_view.nil? && !include_permissions_for_view.null?
      query_params["pageSize"] = page_size.to_s if !page_size.nil? && !page_size.null?
      query_params["pageToken"] = page_token.to_s if !page_token.nil? && !page_token.null?
      query_params["supportsAllDrives"] = supports_all_drives.to_s if !supports_all_drives.nil? && !supports_all_drives.null?
      query_params["supportsTeamDrives"] = supports_team_drives.to_s if !supports_team_drives.nil? && !supports_team_drives.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "PermissionsApi.drive_permissions_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a permission with patch semantics.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return [Permission]
    def update(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, remove_expiration : Bool? = false, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil)
      data, _status_code, _headers = update_with_http_info(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, remove_expiration: remove_expiration, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission)
      data
    end

    # Updates a permission with patch semantics.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return [Array<(Permission, Integer, Hash)>] Permission data, response status code and response headers
    def update_with_http_info(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, remove_expiration : Bool? = false, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil)
      request = build_api_request_for_update(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, remove_expiration: remove_expiration, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: PermissionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Permission.from_nason(data), status_code, headers
    end

    # Updates a permission with patch semantics.
    # @param file_id [String] The ID of the file or shared drive.
    # @param permission_id [String] The ID of the permission.
    # @return nil
    def update(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, remove_expiration : Bool? = false, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil, &block : Crest::Response ->)
      build_api_request_for_update(file_id: file_id, permission_id: permission_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, remove_expiration: remove_expiration, supports_all_drives: supports_all_drives, supports_team_drives: supports_team_drives, transfer_ownership: transfer_ownership, use_domain_admin_access: use_domain_admin_access, permission: permission).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, file_id : String, permission_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, remove_expiration : Bool? = false, supports_all_drives : Bool? = false, supports_team_drives : Bool? = false, transfer_ownership : Bool? = false, use_domain_admin_access : Bool? = false, permission : Permission? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: PermissionsApi.update ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/permissions/{permissionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "permissionId" + "}", URI.encode_path(permission_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["removeExpiration"] = remove_expiration.to_s if !remove_expiration.nil? && !remove_expiration.null?
      query_params["supportsAllDrives"] = supports_all_drives.to_s if !supports_all_drives.nil? && !supports_all_drives.null?
      query_params["supportsTeamDrives"] = supports_team_drives.to_s if !supports_team_drives.nil? && !supports_team_drives.null?
      query_params["transferOwnership"] = transfer_ownership.to_s if !transfer_ownership.nil? && !transfer_ownership.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = permission.to_nason

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "PermissionsApi.drive_permissions_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
