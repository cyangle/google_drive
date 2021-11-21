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

# Unit tests for GoogleDrive::DrivesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "DrivesApi" do
  describe "test an instance of DrivesApi" do
    it "should create an instance of DrivesApi" do
      api_instance = GoogleDrive::DrivesApi.new
      api_instance.should be_a(GoogleDrive::DrivesApi)
    end
  end

  # unit tests for drive_drives_create
  # Creates a new shared drive.
  # @param request_id An ID, such as a random UUID, which uniquely identifies this user&#39;s request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Drive] :drive
  # @return [Drive]
  describe "drive_drives_create test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_delete
  # Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.
  # @param drive_id The ID of the shared drive.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @return [nil]
  describe "drive_drives_delete test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_get
  # Gets a shared drive&#39;s metadata by ID.
  # @param drive_id The ID of the shared drive.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Bool] :use_domain_admin_access Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
  # @return [Drive]
  describe "drive_drives_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_hide
  # Hides a shared drive from the default view.
  # @param drive_id The ID of the shared drive.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @return [Drive]
  describe "drive_drives_hide test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_list
  # Lists the user&#39;s shared drives.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Int32] :page_size Maximum number of shared drives to return per page.
  # @option opts [String] :page_token Page token for shared drives.
  # @option opts [String] :q Query string for searching shared drives.
  # @option opts [Bool] :use_domain_admin_access Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.
  # @return [DriveList]
  describe "drive_drives_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_unhide
  # Restores a shared drive to the default view.
  # @param drive_id The ID of the shared drive.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @return [Drive]
  describe "drive_drives_unhide test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_drives_update
  # Updates the metadate for a shared drive.
  # @param drive_id The ID of the shared drive.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Bool] :use_domain_admin_access Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
  # @option opts [Drive] :drive
  # @return [Drive]
  describe "drive_drives_update test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
