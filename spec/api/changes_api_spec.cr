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

# Unit tests for GoogleDrive::ChangesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ChangesApi" do
  describe "test an instance of ChangesApi" do
    it "should create an instance of ChangesApi" do
      api_instance = GoogleDrive::ChangesApi.new
      api_instance.should be_a(GoogleDrive::ChangesApi)
    end
  end

  # unit tests for drive_changes_get_start_page_token
  # Gets the starting pageToken for listing future changes.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :drive_id The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive is returned.
  # @option opts [Bool] :supports_all_drives Whether the requesting application supports both My Drives and shared drives.
  # @option opts [Bool] :supports_team_drives Deprecated use supportsAllDrives instead.
  # @option opts [String] :team_drive_id Deprecated use driveId instead.
  # @return [StartPageToken]
  describe "drive_changes_get_start_page_token test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_changes_list
  # Lists the changes for a user or shared drive.
  # @param page_token The token for continuing a previous list request on the next page. This should be set to the value of &#39;nextPageToken&#39; from the previous response or to the response from the getStartPageToken method.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :drive_id The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
  # @option opts [Bool] :include_corpus_removals Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
  # @option opts [Bool] :include_items_from_all_drives Whether both My Drive and shared drive items should be included in results.
  # @option opts [String] :include_permissions_for_view Specifies which additional view&#39;s permissions to include in the response. Only &#39;published&#39; is supported.
  # @option opts [Bool] :include_removed Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
  # @option opts [Bool] :include_team_drive_items Deprecated use includeItemsFromAllDrives instead.
  # @option opts [Int32] :page_size The maximum number of changes to return per page.
  # @option opts [Bool] :restrict_to_my_drive Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
  # @option opts [String] :spaces A comma-separated list of spaces to query within the user corpus. Supported values are &#39;drive&#39;, &#39;appDataFolder&#39; and &#39;photos&#39;.
  # @option opts [Bool] :supports_all_drives Whether the requesting application supports both My Drives and shared drives.
  # @option opts [Bool] :supports_team_drives Deprecated use supportsAllDrives instead.
  # @option opts [String] :team_drive_id Deprecated use driveId instead.
  # @return [ChangeList]
  describe "drive_changes_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for drive_changes_watch
  # Subscribes to changes for a user.
  # @param page_token The token for continuing a previous list request on the next page. This should be set to the value of &#39;nextPageToken&#39; from the previous response or to the response from the getStartPageToken method.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :drive_id The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.
  # @option opts [Bool] :include_corpus_removals Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.
  # @option opts [Bool] :include_items_from_all_drives Whether both My Drive and shared drive items should be included in results.
  # @option opts [String] :include_permissions_for_view Specifies which additional view&#39;s permissions to include in the response. Only &#39;published&#39; is supported.
  # @option opts [Bool] :include_removed Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.
  # @option opts [Bool] :include_team_drive_items Deprecated use includeItemsFromAllDrives instead.
  # @option opts [Int32] :page_size The maximum number of changes to return per page.
  # @option opts [Bool] :restrict_to_my_drive Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those in the Application Data folder or shared files which have not been added to My Drive.
  # @option opts [String] :spaces A comma-separated list of spaces to query within the user corpus. Supported values are &#39;drive&#39;, &#39;appDataFolder&#39; and &#39;photos&#39;.
  # @option opts [Bool] :supports_all_drives Whether the requesting application supports both My Drives and shared drives.
  # @option opts [Bool] :supports_team_drives Deprecated use supportsAllDrives instead.
  # @option opts [String] :team_drive_id Deprecated use driveId instead.
  # @option opts [Channel] :channel
  # @return [Channel]
  describe "drive_changes_watch test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end