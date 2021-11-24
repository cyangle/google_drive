require "file"
require "dir"

src_dir = "./src/google_drive/api"

entries = Dir.glob(File.join(src_dir, "*.cr"))

entries.each do |entry|
  pp "processing #{entry}"
  base_name = File.basename(entry)
  api_name = base_name.sub("_api.cr", "")
  method_prefix = "drive_#{api_name}_"
  operation_prefix = "operation: \"#{api_name.capitalize}Api."
  new_operation_prefix = "#{operation_prefix}#{method_prefix}"
  file_content = File.read(entry)
  new_file_content = file_content.gsub(method_prefix, "").gsub(operation_prefix, new_operation_prefix)
  File.write(entry, new_file_content)
  pp "completed #{entry}"
end
