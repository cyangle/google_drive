#  Drive API
#
# Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
#
# The version of the OpenAPI document: v3
#
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module GoogleDrive
  # A list of files.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FileList
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The list of files. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    @[JSON::Field(key: "files", type: Array(File)?, presence: true, ignore_serialize: files.nil? && !files_present?)]
    property files : Array(File)?

    @[JSON::Field(ignore: true)]
    property? files_present : Bool = false

    # Whether the search process was incomplete. If true, then some search results may be missing, since all documents were not searched. This may occur when searching multiple drives with the \"allDrives\" corpora, but all corpora could not be searched. When this happens, it is suggested that clients narrow their query by choosing a different corpus such as \"user\" or \"drive\".
    @[JSON::Field(key: "incompleteSearch", type: Bool?, presence: true, ignore_serialize: incomplete_search.nil? && !incomplete_search_present?)]
    property incomplete_search : Bool?

    @[JSON::Field(ignore: true)]
    property? incomplete_search_present : Bool = false

    # Identifies what kind of resource this is. Value: the fixed string \"drive#fileList\".
    @[JSON::Field(key: "kind", type: String?, default: "drive#fileList", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # The page token for the next page of files. This will be absent if the end of the files list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    @[JSON::Field(key: "nextPageToken", type: String?, presence: true, ignore_serialize: next_page_token.nil? && !next_page_token_present?)]
    property next_page_token : String?

    @[JSON::Field(ignore: true)]
    property? next_page_token_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @files : Array(File)? = nil, @incomplete_search : Bool? = nil, @kind : String? = "drive#fileList", @next_page_token : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        files == o.files &&
        incomplete_search == o.incomplete_search &&
        kind == o.kind &&
        next_page_token == o.next_page_token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@files, @incomplete_search, @kind, @next_page_token)
  end
end
