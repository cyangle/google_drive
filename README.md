# google_drive

The Crystal module for the Drive API

Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: v3
- Package version: 3.1.0
- Build package: org.openapitools.codegen.languages.CrystalClientCodegen
- Custom templates: [crystal_client_generator](https://github.com/cyangle/crystal_client_generator)

For more information, please visit [https://google.com](https://google.com)

## Installation

### Install from Git

Add the following to shard.yaml

```yaml
dependencies:
  google_drive:
    github: cyangle/google_drive
    version: ~> 3.1.0
```

## Usage

Check [here](https://developers.google.com/drive/api/v3/reference) for more information about how to use google drive v3 APIs.

Below lists only a few examples of the most interesting APIs, the client should support all APIs provided by google drive as it's generated from the OpenAPI v3 specification `./google-drive-api-v3-oas3.json`.

### JSON serialization

This shard uses [nason](https://github.com/cyangle/nason) for JSON (de)serialization.

### Require this shard in your project

First you need to require it.

```crystal
require "google_drive"
```

### Configure client with google Oauth2 access token

```crystal
GoogleDrive.configure do |config|
  config.access_token = "Google OAuth2 Access Token"
end
```

### FilesApi

```crystal
files_api = GoogleDrive::FilesApi.new
```

#### List files

```crystal
files_api.list(page_size: 10, spaces: "appDataFolder")
```

#### Download file by id

```crystal
files_api.get(file_id: "unique_file_id", alt: "media") do |response|
  File.open("my_file.txt", "w") do |file|
    IO.copy(response.body_io, file)
  end
end
```

#### Get file meta data by id

```crystal
file_meta : GoogleDrive::File = files_api.get(file_id: "unique_file_id", alt: "json")
```

#### Upload file

```crystal
file_meta = GoogleDrive::File.new(
  name: "test.json",
  mime_type: "application/json",
  parents: ["appDataFolder"]
)

File.tempfile(suffix: ".json") do |file|
  file.print(file_meta.to_nason) # This shard uses nason for JSON serialization
  file.rewind
  new_file_meta : GoogleDrive::File = files_api.upload(
    upload_type: "multipart",
    metadata: file,
    media: File.open("./test.json")
  )
  file.delete
end
```

#### Update file metadata by id

Update file name.

```crystal
file_meta = GoogleDrive::File.new(name: "new_name.json")
files_api.update(file_id: "unique_file_id", file: file_meta)
```

#### Update file content by id

```crystal
files_api.update_content(file_id: "unique_file_id", media: File.open("./test2.json"))
```

#### Delete file by id

```crystal
files_api.delete(file_id: "unique_file_id")
```

## Development

Install dependencies

```shell
shards
```

Run the tests:

```shell
crystal spec
```

Run lints

```shell
./bin/ameba
crystal tool format --check
```
