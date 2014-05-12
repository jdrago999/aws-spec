require 'aws-sdk'

if File.exist?("config/aws.yml")
  config = YAML.load_file("config/aws.yml")
  AWS.config(
    access_key_id: config["access_key_id"],
    secret_access_key: config["secret_access_key"],
    region: config["region"]
  )
end
