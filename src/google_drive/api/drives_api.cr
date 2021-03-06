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
  class DrivesApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a new shared drive.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
    # @return [Drive]
    def create(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, drive : Drive? = nil)
      data, _status_code, _headers = create_with_http_info(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, drive: drive)
      data
    end

    # Creates a new shared drive.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
    # @return [Array<(Drive, Integer, Hash)>] Drive data, response status code and response headers
    def create_with_http_info(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, drive : Drive? = nil)
      request = build_api_request_for_create(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, drive: drive)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Drive.from_json(data), status_code, headers
    end

    # Creates a new shared drive.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
    # @return nil
    def create(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, drive : Drive? = nil, &block : Crest::Response ->)
      build_api_request_for_create(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, drive: drive).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, drive : Drive? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.create ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["requestId"] = request_id.to_s if !request_id.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = drive.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_create",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.
    # @param drive_id [String] The ID of the shared drive.
    # @return [nil]
    def delete(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, allow_item_deletion : Bool? = nil, use_domain_admin_access : Bool? = nil)
      delete_with_http_info(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, allow_item_deletion: allow_item_deletion, use_domain_admin_access: use_domain_admin_access)
      nil
    end

    # Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, allow_item_deletion : Bool? = nil, use_domain_admin_access : Bool? = nil)
      request = build_api_request_for_delete(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, allow_item_deletion: allow_item_deletion, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.
    # @param drive_id [String] The ID of the shared drive.
    # @return nil
    def delete(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, allow_item_deletion : Bool? = nil, use_domain_admin_access : Bool? = nil, &block : Crest::Response ->)
      build_api_request_for_delete(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, allow_item_deletion: allow_item_deletion, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, allow_item_deletion : Bool? = nil, use_domain_admin_access : Bool? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.delete ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives/{driveId}".sub("{" + "driveId" + "}", URI.encode_path(drive_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["allowItemDeletion"] = allow_item_deletion.to_s if !allow_item_deletion.nil?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil?

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Gets a shared drive's metadata by ID.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Drive]
    def get(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil)
      data, _status_code, _headers = get_with_http_info(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Gets a shared drive&#39;s metadata by ID.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Array<(Drive, Integer, Hash)>] Drive data, response status code and response headers
    def get_with_http_info(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil)
      request = build_api_request_for_get(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Drive.from_json(data), status_code, headers
    end

    # Gets a shared drive&#39;s metadata by ID.
    # @param drive_id [String] The ID of the shared drive.
    # @return nil
    def get(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil, &block : Crest::Response ->)
      build_api_request_for_get(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.get ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives/{driveId}".sub("{" + "driveId" + "}", URI.encode_path(drive_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Hides a shared drive from the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Drive]
    def hide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      data, _status_code, _headers = hide_with_http_info(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      data
    end

    # Hides a shared drive from the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Array<(Drive, Integer, Hash)>] Drive data, response status code and response headers
    def hide_with_http_info(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      request = build_api_request_for_hide(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#hide\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Drive.from_json(data), status_code, headers
    end

    # Hides a shared drive from the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return nil
    def hide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, &block : Crest::Response ->)
      build_api_request_for_hide(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_hide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.hide ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives/{driveId}/hide".sub("{" + "driveId" + "}", URI.encode_path(drive_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_hide",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Lists the user's shared drives.
    # @return [DriveList]
    def list(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = nil)
      data, _status_code, _headers = list_with_http_info(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Lists the user&#39;s shared drives.
    # @return [Array<(DriveList, Integer, Hash)>] DriveList data, response status code and response headers
    def list_with_http_info(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = nil)
      request = build_api_request_for_list(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return DriveList.from_json(data), status_code, headers
    end

    # Lists the user&#39;s shared drives.
    # @return nil
    def list(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = nil, &block : Crest::Response ->)
      build_api_request_for_list(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.list ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 100
        raise ArgumentError.new("invalid value for \"page_size\" when calling DrivesApi.list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 1
        raise ArgumentError.new("invalid value for \"page_size\" when calling DrivesApi.list, must be greater than or equal to 1.")
      end

      # resource path
      local_var_path = "/drive/v3/drives"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["pageSize"] = page_size.to_s if !page_size.nil?
      query_params["pageToken"] = page_token.to_s if !page_token.nil?
      query_params["q"] = q.to_s if !q.nil?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Restores a shared drive to the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Drive]
    def unhide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      data, _status_code, _headers = unhide_with_http_info(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      data
    end

    # Restores a shared drive to the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Array<(Drive, Integer, Hash)>] Drive data, response status code and response headers
    def unhide_with_http_info(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      request = build_api_request_for_unhide(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#unhide\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Drive.from_json(data), status_code, headers
    end

    # Restores a shared drive to the default view.
    # @param drive_id [String] The ID of the shared drive.
    # @return nil
    def unhide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, &block : Crest::Response ->)
      build_api_request_for_unhide(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_unhide(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.unhide ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives/{driveId}/unhide".sub("{" + "driveId" + "}", URI.encode_path(drive_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_unhide",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates the metadate for a shared drive.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Drive]
    def update(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil, drive : Drive? = nil)
      data, _status_code, _headers = update_with_http_info(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, drive: drive)
      data
    end

    # Updates the metadate for a shared drive.
    # @param drive_id [String] The ID of the shared drive.
    # @return [Array<(Drive, Integer, Hash)>] Drive data, response status code and response headers
    def update_with_http_info(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil, drive : Drive? = nil)
      request = build_api_request_for_update(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, drive: drive)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DrivesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Drive.from_json(data), status_code, headers
    end

    # Updates the metadate for a shared drive.
    # @param drive_id [String] The ID of the shared drive.
    # @return nil
    def update(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil, drive : Drive? = nil, &block : Crest::Response ->)
      build_api_request_for_update(drive_id: drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, drive: drive).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = nil, drive : Drive? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DrivesApi.update ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/drives/{driveId}".sub("{" + "driveId" + "}", URI.encode_path(drive_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = drive.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "DrivesApi.drive_drives_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
