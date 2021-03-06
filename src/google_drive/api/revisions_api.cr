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
  class RevisionsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [nil]
    def delete(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      delete_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      nil
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can&#39;t be deleted.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil)
      request = build_api_request_for_delete(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: RevisionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can&#39;t be deleted.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return nil
    def delete(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, &block : Crest::Response ->)
      build_api_request_for_delete(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: RevisionsApi.delete ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

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

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Gets a revision's metadata or content by ID.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [Revision]
    def get(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, acknowledge_abuse : Bool? = nil)
      data, _status_code, _headers = get_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse)
      data
    end

    # Gets a revision&#39;s metadata or content by ID.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [Array<(Revision, Integer, Hash)>] Revision data, response status code and response headers
    def get_with_http_info(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, acknowledge_abuse : Bool? = nil)
      request = build_api_request_for_get(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: RevisionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Revision.from_json(data), status_code, headers
    end

    # Gets a revision&#39;s metadata or content by ID.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return nil
    def get(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, acknowledge_abuse : Bool? = nil, &block : Crest::Response ->)
      build_api_request_for_get(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, acknowledge_abuse: acknowledge_abuse).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, acknowledge_abuse : Bool? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: RevisionsApi.get ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["acknowledgeAbuse"] = acknowledge_abuse.to_s if !acknowledge_abuse.nil?

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
        operation: "RevisionsApi.drive_revisions_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Lists a file's revisions.
    # @param file_id [String] The ID of the file.
    # @return [RevisionList]
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil)
      data, _status_code, _headers = list_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token)
      data
    end

    # Lists a file&#39;s revisions.
    # @param file_id [String] The ID of the file.
    # @return [Array<(RevisionList, Integer, Hash)>] RevisionList data, response status code and response headers
    def list_with_http_info(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil)
      request = build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: RevisionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return RevisionList.from_json(data), status_code, headers
    end

    # Lists a file&#39;s revisions.
    # @param file_id [String] The ID of the file.
    # @return nil
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil, &block : Crest::Response ->)
      build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, page_size: page_size, page_token: page_token).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, page_size : Int32? = nil, page_token : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: RevisionsApi.list ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 1000
        raise ArgumentError.new("invalid value for \"page_size\" when calling RevisionsApi.list, must be smaller than or equal to 1000.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 1
        raise ArgumentError.new("invalid value for \"page_size\" when calling RevisionsApi.list, must be greater than or equal to 1.")
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

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
        operation: "RevisionsApi.drive_revisions_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a revision with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [Revision]
    def update(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, revision : Revision? = nil)
      data, _status_code, _headers = update_with_http_info(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision)
      data
    end

    # Updates a revision with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return [Array<(Revision, Integer, Hash)>] Revision data, response status code and response headers
    def update_with_http_info(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, revision : Revision? = nil)
      request = build_api_request_for_update(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: RevisionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Revision.from_json(data), status_code, headers
    end

    # Updates a revision with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param revision_id [String] The ID of the revision.
    # @return nil
    def update(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, revision : Revision? = nil, &block : Crest::Response ->)
      build_api_request_for_update(file_id: file_id, revision_id: revision_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, revision: revision).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, file_id : String, revision_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, revision : Revision? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: RevisionsApi.update ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/revisions/{revisionId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "revisionId" + "}", URI.encode_path(revision_id.to_s))

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
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = revision.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "RevisionsApi.drive_revisions_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
