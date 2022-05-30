ACCESS_TOKEN = ENV.fetch("ACCESS_TOKEN", "ignored_by_vcr")

GoogleDrive.configure do |config|
  config.access_token = ACCESS_TOKEN
end
