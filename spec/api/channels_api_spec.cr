#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "../spec_helper"

# Unit tests for GoogleDrive::ChannelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ChannelsApi" do
  describe "test an instance of ChannelsApi" do
    it "should create an instance of ChannelsApi" do
      api_instance = GoogleDrive::ChannelsApi.new
      api_instance.should be_a(GoogleDrive::ChannelsApi)
    end
  end

  # unit tests for drive_channels_stop
  # Stop watching resources through this channel
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Channel] :channel
  # @return [nil]
  describe "drive_channels_stop test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end