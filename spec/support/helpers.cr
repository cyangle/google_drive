require "json"

module Helpers
  def self.compact_json(path : String) : String
    JSON.parse(File.read(path)).to_json
  end
end
