ACCESS_TOKEN = ENV.fetch("ACCESS_TOKEN", "test_token")

GoogleDrive.configure do |config|
  config.access_token = ACCESS_TOKEN
end
