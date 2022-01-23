#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "log"

module GoogleDrive
  class Configuration
    # Defines url scheme
    property scheme : String

    # Defines url host
    property host : String

    # Defines url base path
    property base_path : String

    # Define server configuration index
    property server_index : Int32

    # Define server operation configuration index
    property server_operation_index : Hash(String, String)

    # Default server variables
    property server_variables : Hash(String, String)

    # Default server operation variables
    property server_operation_variables : Hash(String, String)

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] "key" => parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key["api_key"] = "xxx"
    property api_key : Hash(String, String)

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] "key" => parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix["api_key"] = "Token"
    property api_key_prefix : Hash(String, String)

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    property username : String?

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    property password : String?

    # Defines the access token (Bearer) used with OAuth2.
    property access_token : String?

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    property debugging : Bool

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    property temp_folder_path : String?

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    property timeout : Int32

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    property client_side_validation : Bool

    # ## TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    # TODO attr_accessor :verify_ssl

    # ## TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    # TODO attr_accessor :verify_ssl_host

    # ## TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    # TODO attr_accessor :ssl_ca_cert

    # ## TLS/SSL setting
    # Client certificate file (for client certificate)
    # TODO attr_accessor :cert_file

    # ## TLS/SSL setting
    # Client private key file (for client certificate)
    # TODO attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to Nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    # property params_encoding : String?

    # Create a new `Configuration`.
    def initialize
      @scheme = "https"
      @host = "www.googleapis.com"
      @base_path = ""
      @server_index = 0
      @server_operation_index = {} of String => String
      @server_variables = {} of String => String
      @server_operation_variables = {} of String => String
      @api_key = {} of String => String
      @api_key_prefix = {} of String => String
      @timeout = 0
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      # @params_encoding = nil
      # @cert_file = nil
      # @key_file = nil
      @debugging = false
      @username = nil
      @password = nil
      @access_token = nil
      @temp_folder_path = nil
    end

    # Create a new `Configuration` with block.
    #
    # ```
    # config = Petstore::Configuration.new do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # ```
    def initialize
      initialize
      yield self
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    # Configure object with block.
    def configure
      yield self
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, "")
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, "").split("/").first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, "/")
      @base_path = "" if @base_path == "/"
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = Nil)
      # TODO revise below to support operation-level server setting
      # index = server_operation_index.fetch(operation, server_index)
      "#{scheme}://#{[host, base_path].join("/").gsub(/\/+/, "/")}".sub(/\/+\z/, "") # if index == Nil

      # server_url(index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name)
      if prefix = @api_key_prefix[param_name]?
        "#{prefix} #{@api_key[param_name]}"
      else
        @api_key[param_name]? || ""
      end
    end

    # Gets Basic Auth token string
    def basic_auth_token
      "Basic #{Base64.strict_encode("#{username}:#{password}")}"
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      Hash{
        "Oauth2" => {
          "type"  => "oauth2",
          "in"    => "header",
          "key"   => "Authorization",
          "value" => "Bearer #{access_token}",
        },
      }
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          "url"         => "https://www.googleapis.com",
          "description" => "No description provided",
        },
      ]
    end

    def operation_server_settings
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index_string, variables = {} of String => String, servers = nil)
      servers = server_settings if servers.nil?

      index = index_string.to_i
      # check array index out of bound
      if (index < 0 || index >= servers.size)
        raise ArgumentError.new("Invalid index #{index} when selecting the server. Must be less than #{servers.size}")
      end

      server = servers[index]
      url = server["url"]

      return url unless server.has_key? "variables"

      # go through variable and assign a value
      server["variables"].each do |name, variable|
        if variables.has_key?(name)
          if (!variable.has_key?("enum_values") || variable["enum_values"].includes?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            raise ArgumentError.new("The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{variable["enum_values"]}.")
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", variable["default_value"]
        end
      end

      url
    end
  end
end
