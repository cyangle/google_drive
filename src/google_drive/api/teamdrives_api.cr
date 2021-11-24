#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "uri"

module GoogleDrive
  class TeamdrivesApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Deprecated use drives.create instead.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user&#39;s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
    # @return [TeamDrive]
    def drive_teamdrives_create(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, team_drive : TeamDrive? = nil)
      data, _status_code, _headers = drive_teamdrives_create_with_http_info(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, team_drive: team_drive)
      data
    end

    # Deprecated use drives.create instead.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user&#39;s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
    # @return [Array<(TeamDrive, Integer, Hash)>] TeamDrive data, response status code and response headers
    def drive_teamdrives_create_with_http_info(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, team_drive : TeamDrive? = nil)
      request = build_drive_teamdrives_create_request(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, team_drive: team_drive)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: TeamdrivesApi#drive_teamdrives_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return TeamDrive.from_nason(data), status_code, headers
    end

    # Deprecated use drives.create instead.
    # @param request_id [String] An ID, such as a random UUID, which uniquely identifies this user&#39;s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
    # @return nil
    def drive_teamdrives_create(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, team_drive : TeamDrive? = nil, &block : Crest::Response ->)
      request = build_drive_teamdrives_create_request(request_id: request_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, team_drive: team_drive)

      request.execute do |response|
        block.call(response)
      end
    end

    # @return Crest::Request
    def build_drive_teamdrives_create_request(*, request_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, team_drive : TeamDrive? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: TeamdrivesApi.drive_teamdrives_create ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/teamdrives"

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["requestId"] = request_id.to_s if !request_id.nil? && !request_id.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | ::File)).new

      # http body (model)
      post_body = team_drive.to_nason

      # return_type
      return_type = "TeamDrive"

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        :"POST",
        local_var_path,
        "TeamdrivesApi.drive_teamdrives_create",
        return_type,
        post_body,
        auth_names,
        header_params,
        query_params,
        form_params
      )
    end

    # Deprecated use drives.delete instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [nil]
    def drive_teamdrives_delete(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil)
      drive_teamdrives_delete_with_http_info(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      nil
    end

    # Deprecated use drives.delete instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def drive_teamdrives_delete_with_http_info(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil)
      request = build_drive_teamdrives_delete_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: TeamdrivesApi#drive_teamdrives_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Deprecated use drives.delete instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return nil
    def drive_teamdrives_delete(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, &block : Crest::Response ->)
      request = build_drive_teamdrives_delete_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      request.execute do |response|
        block.call(response)
      end
    end

    # @return Crest::Request
    def build_drive_teamdrives_delete_request(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: TeamdrivesApi.drive_teamdrives_delete ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/teamdrives/{teamDriveId}".sub("{" + "teamDriveId" + "}", URI.encode_path(team_drive_id.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = Hash(String, (String | Array(String) | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        :"DELETE",
        local_var_path,
        "TeamdrivesApi.drive_teamdrives_delete",
        return_type,
        post_body,
        auth_names,
        header_params,
        query_params,
        form_params
      )
    end

    # Deprecated use drives.get instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [TeamDrive]
    def drive_teamdrives_get(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false)
      data, _status_code, _headers = drive_teamdrives_get_with_http_info(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Deprecated use drives.get instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [Array<(TeamDrive, Integer, Hash)>] TeamDrive data, response status code and response headers
    def drive_teamdrives_get_with_http_info(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false)
      request = build_drive_teamdrives_get_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: TeamdrivesApi#drive_teamdrives_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return TeamDrive.from_nason(data), status_code, headers
    end

    # Deprecated use drives.get instead.
    # @param team_drive_id [String] The ID of the Team Drive
    # @return nil
    def drive_teamdrives_get(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false, &block : Crest::Response ->)
      request = build_drive_teamdrives_get_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access)

      request.execute do |response|
        block.call(response)
      end
    end

    # @return Crest::Request
    def build_drive_teamdrives_get_request(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: TeamdrivesApi.drive_teamdrives_get ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/teamdrives/{teamDriveId}".sub("{" + "teamDriveId" + "}", URI.encode_path(team_drive_id.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "TeamDrive"

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        :"GET",
        local_var_path,
        "TeamdrivesApi.drive_teamdrives_get",
        return_type,
        post_body,
        auth_names,
        header_params,
        query_params,
        form_params
      )
    end

    # Deprecated use drives.list instead.
    # @return [TeamDriveList]
    def drive_teamdrives_list(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = 10, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = false)
      data, _status_code, _headers = drive_teamdrives_list_with_http_info(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access)
      data
    end

    # Deprecated use drives.list instead.
    # @return [Array<(TeamDriveList, Integer, Hash)>] TeamDriveList data, response status code and response headers
    def drive_teamdrives_list_with_http_info(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = 10, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = false)
      request = build_drive_teamdrives_list_request(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: TeamdrivesApi#drive_teamdrives_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return TeamDriveList.from_nason(data), status_code, headers
    end

    # Deprecated use drives.list instead.
    # @return nil
    def drive_teamdrives_list(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = 10, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = false, &block : Crest::Response ->)
      request = build_drive_teamdrives_list_request(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token, q: q, use_domain_admin_access: use_domain_admin_access)

      request.execute do |response|
        block.call(response)
      end
    end

    # @return Crest::Request
    def build_drive_teamdrives_list_request(*, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = 10, page_token : String? = nil, q : String? = nil, use_domain_admin_access : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: TeamdrivesApi.drive_teamdrives_list ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 100
        raise ArgumentError.new("invalid value for \"page_size\" when calling TeamdrivesApi.drive_teamdrives_list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 1
        raise ArgumentError.new("invalid value for \"page_size\" when calling TeamdrivesApi.drive_teamdrives_list, must be greater than or equal to 1.")
      end

      # resource path
      local_var_path = "/drive/v3/teamdrives"

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["pageSize"] = page_size.to_s if !page_size.nil? && !page_size.null?
      query_params["pageToken"] = page_token.to_s if !page_token.nil? && !page_token.null?
      query_params["q"] = q.to_s if !q.nil? && !q.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "TeamDriveList"

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        :"GET",
        local_var_path,
        "TeamdrivesApi.drive_teamdrives_list",
        return_type,
        post_body,
        auth_names,
        header_params,
        query_params,
        form_params
      )
    end

    # Deprecated use drives.update instead
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [TeamDrive]
    def drive_teamdrives_update(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false, team_drive : TeamDrive? = nil)
      data, _status_code, _headers = drive_teamdrives_update_with_http_info(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, team_drive: team_drive)
      data
    end

    # Deprecated use drives.update instead
    # @param team_drive_id [String] The ID of the Team Drive
    # @return [Array<(TeamDrive, Integer, Hash)>] TeamDrive data, response status code and response headers
    def drive_teamdrives_update_with_http_info(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false, team_drive : TeamDrive? = nil)
      request = build_drive_teamdrives_update_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, team_drive: team_drive)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: TeamdrivesApi#drive_teamdrives_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return TeamDrive.from_nason(data), status_code, headers
    end

    # Deprecated use drives.update instead
    # @param team_drive_id [String] The ID of the Team Drive
    # @return nil
    def drive_teamdrives_update(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false, team_drive : TeamDrive? = nil, &block : Crest::Response ->)
      request = build_drive_teamdrives_update_request(team_drive_id: team_drive_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, use_domain_admin_access: use_domain_admin_access, team_drive: team_drive)

      request.execute do |response|
        block.call(response)
      end
    end

    # @return Crest::Request
    def build_drive_teamdrives_update_request(*, team_drive_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, use_domain_admin_access : Bool? = false, team_drive : TeamDrive? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: TeamdrivesApi.drive_teamdrives_update ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/teamdrives/{teamDriveId}".sub("{" + "teamDriveId" + "}", URI.encode_path(team_drive_id.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["useDomainAdminAccess"] = use_domain_admin_access.to_s if !use_domain_admin_access.nil? && !use_domain_admin_access.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | ::File)).new

      # http body (model)
      post_body = team_drive.to_nason

      # return_type
      return_type = "TeamDrive"

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        :"PATCH",
        local_var_path,
        "TeamdrivesApi.drive_teamdrives_update",
        return_type,
        post_body,
        auth_names,
        header_params,
        query_params,
        form_params
      )
    end
  end
end
