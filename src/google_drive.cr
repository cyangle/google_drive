#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#
# OpenAPI Generator version: 6.0.1-SNAPSHOT

# Dependencies
require "crest"
require "log"
require "json"
require "time"
require "uri"

# Project files
require "./ext/**"
require "./validators/**"
require "./google_drive/configuration.cr"
require "./google_drive/api_error.cr"
require "./google_drive/api_client.cr"
require "./google_drive/models/**"
require "./google_drive/api/**"

module GoogleDrive
  Log = ::Log.for("GoogleDrive") # => Log for GoogleDrive source

  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  # Return the default `Configuration` object.
  def self.configure
    Configuration.default
  end

  # Customize default settings for the SDK using block.
  #
  # ```
  # GoogleDrive.configure do |config|
  #   config.username = "xxx"
  #   config.password = "xxx"
  # end
  # ```
  def self.configure
    yield Configuration.default
  end
end
