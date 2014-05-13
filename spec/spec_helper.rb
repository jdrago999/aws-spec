require 'aws-sdk'

AWS.config(YAML.load_file("config/aws.yml")) if File.exist?("config/aws.yml")
