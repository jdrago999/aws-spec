require 'aws-sdk'
require 'rspec/collection_matchers'

AWS.config(YAML.load_file("config/aws.yml")) if File.exist?("config/aws.yml")
