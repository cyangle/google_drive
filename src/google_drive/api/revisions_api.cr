#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/revision"
require "../models/revision_list"

module GoogleDrive
  class RevisionsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @return [Nil]
    def delete(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil
    ) : Nil
      delete_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      nil
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can&#39;t be deleted.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_with_http_info(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil
    ) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: RevisionsApi#delete\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can&#39;t be deleted.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @return nil
    def delete(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip).execute(&block)
    end

    DRIVE_REVISIONS_DELETE_VALID_VALUES_FOR_ALT = String.static_array("json", "media")

    # @return Crest::Request
    def build_api_request_for_delete(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: RevisionsApi.delete ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"file_id\" is required and cannot be null") if file_id.nil?

        raise ArgumentError.new("\"revision_id\" is required and cannot be null") if revision_id.nil?

        unless (_alt = alt).nil?
          OpenApi::EnumValidator.validate("alt", _alt, DRIVE_REVISIONS_DELETE_VALID_VALUES_FOR_ALT)
        end
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["Oauth2c", "Oauth2"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Gets a revision's metadata or content by ID.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param acknowledge_abuse [Bool?] Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
    # @return [GoogleDrive::Revision]
    def get(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      acknowledge_abuse : Bool? = nil
    ) : GoogleDrive::Revision
      data, _status_code, _headers = get_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse)
      data
    end

    # Gets a revision&#39;s metadata or content by ID.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param acknowledge_abuse [Bool?] Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
    # @return [Tuple(GoogleDrive::Revision, Integer, Hash)] GoogleDrive::Revision, response status code and response headers
    def get_with_http_info(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      acknowledge_abuse : Bool? = nil
    ) : Tuple(GoogleDrive::Revision, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: RevisionsApi#get\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(GoogleDrive::Revision.from_json(body), status_code, headers)
    end

    # Gets a revision&#39;s metadata or content by ID.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param acknowledge_abuse [Bool?] Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
    # @return nil
    def get(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      acknowledge_abuse : Bool? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse).execute(&block)
    end

    DRIVE_REVISIONS_GET_VALID_VALUES_FOR_ALT = String.static_array("json", "media")

    # @return Crest::Request
    def build_api_request_for_get(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      acknowledge_abuse : Bool? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: RevisionsApi.get ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"file_id\" is required and cannot be null") if file_id.nil?

        raise ArgumentError.new("\"revision_id\" is required and cannot be null") if revision_id.nil?

        unless (_alt = alt).nil?
          OpenApi::EnumValidator.validate("alt", _alt, DRIVE_REVISIONS_GET_VALID_VALUES_FOR_ALT)
        end
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["acknowledgeAbuse"] = acknowledge_abuse.to_s if !acknowledge_abuse.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["Oauth2c", "Oauth2"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Lists a file's revisions.
    # @required @param file_id [String?] The ID of the file.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param page_size [Int32?] The maximum number of revisions to return per page.
    # @optional @param page_token [String?] The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
    # @return [GoogleDrive::RevisionList]
    def list(
      *,
      file_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      page_size : Int32? = nil,
      page_token : String? = nil
    ) : GoogleDrive::RevisionList
      data, _status_code, _headers = list_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token)
      data
    end

    # Lists a file&#39;s revisions.
    # @required @param file_id [String?] The ID of the file.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param page_size [Int32?] The maximum number of revisions to return per page.
    # @optional @param page_token [String?] The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
    # @return [Tuple(GoogleDrive::RevisionList, Integer, Hash)] GoogleDrive::RevisionList, response status code and response headers
    def list_with_http_info(
      *,
      file_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      page_size : Int32? = nil,
      page_token : String? = nil
    ) : Tuple(GoogleDrive::RevisionList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: RevisionsApi#list\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(GoogleDrive::RevisionList.from_json(body), status_code, headers)
    end

    # Lists a file&#39;s revisions.
    # @required @param file_id [String?] The ID of the file.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param page_size [Int32?] The maximum number of revisions to return per page.
    # @optional @param page_token [String?] The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
    # @return nil
    def list(
      *,
      file_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      page_size : Int32? = nil,
      page_token : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token).execute(&block)
    end

    DRIVE_REVISIONS_LIST_VALID_VALUES_FOR_ALT = String.static_array("json", "media")
    DRIVE_REVISIONS_LIST_MAX_FOR_PAGE_SIZE    = Int32.new("1000")
    DRIVE_REVISIONS_LIST_MIN_FOR_PAGE_SIZE    = Int32.new("1")

    # @return Crest::Request
    def build_api_request_for_list(
      *,
      file_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      page_size : Int32? = nil,
      page_token : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: RevisionsApi.list ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"file_id\" is required and cannot be null") if file_id.nil?

        unless (_alt = alt).nil?
          OpenApi::EnumValidator.validate("alt", _alt, DRIVE_REVISIONS_LIST_VALID_VALUES_FOR_ALT)
        end

        unless (_page_size = page_size).nil?
          OpenApi::PrimitiveValidator.validate_max_number("page_size", _page_size, DRIVE_REVISIONS_LIST_MAX_FOR_PAGE_SIZE)
          OpenApi::PrimitiveValidator.validate_min_number("page_size", _page_size, DRIVE_REVISIONS_LIST_MIN_FOR_PAGE_SIZE)
        end
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["pageSize"] = page_size.to_s if !page_size.nil?
      query_params["pageToken"] = page_token.to_s if !page_token.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["Oauth2c", "Oauth2"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a revision with patch semantics.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param revision [GoogleDrive::Revision?]
    # @return [GoogleDrive::Revision]
    def update(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      revision : GoogleDrive::Revision? = nil
    ) : GoogleDrive::Revision
      data, _status_code, _headers = update_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision)
      data
    end

    # Updates a revision with patch semantics.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param revision [GoogleDrive::Revision?]
    # @return [Tuple(GoogleDrive::Revision, Integer, Hash)] GoogleDrive::Revision, response status code and response headers
    def update_with_http_info(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      revision : GoogleDrive::Revision? = nil
    ) : Tuple(GoogleDrive::Revision, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_update(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: RevisionsApi#update\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(GoogleDrive::Revision.from_json(body), status_code, headers)
    end

    # Updates a revision with patch semantics.
    # @required @param file_id [String?] The ID of the file.
    # @required @param revision_id [String?] The ID of the revision.
    # @optional @param alt [String?] Data format for the response.
    # @optional @param fields [String?] Selector specifying which fields to include in a partial response.
    # @optional @param key [String?] API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    # @optional @param oauth_token [String?] OAuth 2.0 token for the current user.
    # @optional @param pretty_print [Bool?] Returns response with indentations and line breaks.
    # @optional @param quota_user [String?] An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    # @optional @param user_ip [String?] Deprecated. Please use quotaUser instead.
    # @optional @param revision [GoogleDrive::Revision?]
    # @return nil
    def update(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      revision : GoogleDrive::Revision? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_update(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision).execute(&block)
    end

    DRIVE_REVISIONS_UPDATE_VALID_VALUES_FOR_ALT = String.static_array("json", "media")

    # @return Crest::Request
    def build_api_request_for_update(
      *,
      file_id : String? = nil,
      revision_id : String? = nil,
      alt : String? = "json",
      fields : String? = nil,
      key : String? = nil,
      oauth_token : String? = nil,
      pretty_print : Bool? = nil,
      quota_user : String? = nil,
      user_ip : String? = nil,
      revision : GoogleDrive::Revision? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: RevisionsApi.update ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"file_id\" is required and cannot be null") if file_id.nil?

        raise ArgumentError.new("\"revision_id\" is required and cannot be null") if revision_id.nil?

        unless (_alt = alt).nil?
          OpenApi::EnumValidator.validate("alt", _alt, DRIVE_REVISIONS_UPDATE_VALID_VALUES_FOR_ALT)
        end

        unless (_revision = revision).nil?
          _revision.validate if _revision.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: revision, content_type: header_params["Content-Type"]?) if !revision.nil?

      # auth_names
      auth_names = ["Oauth2c", "Oauth2"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
