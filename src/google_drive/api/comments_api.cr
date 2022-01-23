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
  class CommentsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a new comment on a file.
    # @param file_id [String] The ID of the file.
    # @return [Comment]
    def create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil)
      data, _status_code, _headers = create_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment)
      data
    end

    # Creates a new comment on a file.
    # @param file_id [String] The ID of the file.
    # @return [Array<(Comment, Integer, Hash)>] Comment data, response status code and response headers
    def create_with_http_info(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil)
      request = build_api_request_for_create(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: CommentsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Comment.from_nason(data), status_code, headers
    end

    # Creates a new comment on a file.
    # @param file_id [String] The ID of the file.
    # @return nil
    def create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil, &block : Crest::Response ->)
      build_api_request_for_create(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: CommentsApi.create ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/comments".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = comment.to_nason

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "CommentsApi.drive_comments_create",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Deletes a comment.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [nil]
    def delete(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil)
      delete_with_http_info(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)
      nil
    end

    # Deletes a comment.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil)
      request = build_api_request_for_delete(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: CommentsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Deletes a comment.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return nil
    def delete(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, &block : Crest::Response ->)
      build_api_request_for_delete(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: CommentsApi.delete ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/comments/{commentId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "commentId" + "}", URI.encode_path(comment_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
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
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "CommentsApi.drive_comments_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Gets a comment by ID.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [Comment]
    def get(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false)
      data, _status_code, _headers = get_with_http_info(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted)
      data
    end

    # Gets a comment by ID.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [Array<(Comment, Integer, Hash)>] Comment data, response status code and response headers
    def get_with_http_info(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false)
      request = build_api_request_for_get(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: CommentsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Comment.from_nason(data), status_code, headers
    end

    # Gets a comment by ID.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return nil
    def get(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false, &block : Crest::Response ->)
      build_api_request_for_get(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: CommentsApi.get ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/comments/{commentId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "commentId" + "}", URI.encode_path(comment_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["includeDeleted"] = include_deleted.to_s if !include_deleted.nil? && !include_deleted.null?

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
        operation: "CommentsApi.drive_comments_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Lists a file's comments.
    # @param file_id [String] The ID of the file.
    # @return [CommentList]
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false, page_size : Int32? = 20, page_token : String? = nil, start_modified_time : String? = nil)
      data, _status_code, _headers = list_with_http_info(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted, page_size: page_size, page_token: page_token, start_modified_time: start_modified_time)
      data
    end

    # Lists a file&#39;s comments.
    # @param file_id [String] The ID of the file.
    # @return [Array<(CommentList, Integer, Hash)>] CommentList data, response status code and response headers
    def list_with_http_info(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false, page_size : Int32? = 20, page_token : String? = nil, start_modified_time : String? = nil)
      request = build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted, page_size: page_size, page_token: page_token, start_modified_time: start_modified_time)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: CommentsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return CommentList.from_nason(data), status_code, headers
    end

    # Lists a file&#39;s comments.
    # @param file_id [String] The ID of the file.
    # @return nil
    def list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false, page_size : Int32? = 20, page_token : String? = nil, start_modified_time : String? = nil, &block : Crest::Response ->)
      build_api_request_for_list(file_id: file_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, include_deleted: include_deleted, page_size: page_size, page_token: page_token, start_modified_time: start_modified_time).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, file_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, include_deleted : Bool? = false, page_size : Int32? = 20, page_token : String? = nil, start_modified_time : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: CommentsApi.list ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      if @api_client.config.client_side_validation && !page_size.nil? && page_size > 100
        raise ArgumentError.new("invalid value for \"page_size\" when calling CommentsApi.list, must be smaller than or equal to 100.")
      end

      if @api_client.config.client_side_validation && !page_size.nil? && page_size < 1
        raise ArgumentError.new("invalid value for \"page_size\" when calling CommentsApi.list, must be greater than or equal to 1.")
      end

      # resource path
      local_var_path = "/drive/v3/files/{fileId}/comments".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["includeDeleted"] = include_deleted.to_s if !include_deleted.nil? && !include_deleted.null?
      query_params["pageSize"] = page_size.to_s if !page_size.nil? && !page_size.null?
      query_params["pageToken"] = page_token.to_s if !page_token.nil? && !page_token.null?
      query_params["startModifiedTime"] = start_modified_time.to_s if !start_modified_time.nil? && !start_modified_time.null?

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
        operation: "CommentsApi.drive_comments_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a comment with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [Comment]
    def update(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil)
      data, _status_code, _headers = update_with_http_info(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment)
      data
    end

    # Updates a comment with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return [Array<(Comment, Integer, Hash)>] Comment data, response status code and response headers
    def update_with_http_info(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil)
      request = build_api_request_for_update(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: CommentsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Comment.from_nason(data), status_code, headers
    end

    # Updates a comment with patch semantics.
    # @param file_id [String] The ID of the file.
    # @param comment_id [String] The ID of the comment.
    # @return nil
    def update(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil, &block : Crest::Response ->)
      build_api_request_for_update(file_id: file_id, comment_id: comment_id, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, comment: comment).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, file_id : String, comment_id : String, alt : String? = "json", fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = true, quota_user : String? = nil, user_ip : String? = nil, comment : Comment? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: CommentsApi.update ..." }
      end
      allowable_values = ["json", "media"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/drive/v3/files/{fileId}/comments/{commentId}".sub("{" + "fileId" + "}", URI.encode_path(file_id.to_s)).sub("{" + "commentId" + "}", URI.encode_path(comment_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = comment.to_nason

      # auth_names
      auth_names = ["Oauth2"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "CommentsApi.drive_comments_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
