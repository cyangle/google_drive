VCR.configure do |settings|
  settings.filter_sensitive_data["Authorization"] = "<Authorization>"
  settings.filter_sensitive_data["User-Agent"] = "<User-Agent>"
end
