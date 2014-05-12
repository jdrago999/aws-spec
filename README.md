# aws-spec

## Overview

RSpec test code samples for AWS Infrastructure

## Configration

Set your access key id and secret access key to `config/aws.yml` .

```
access_key_id: "Provide your access key"
secret_access_key: "Provide your secret key"
region: "ap-northeast-1"
```

You can also specify these values via ENV:

```
export AWS_ACCESS_KEY_ID="Provide your access key"
export AWS_SECRET_ACCESS_KEY="Provide your secret key"
export AWS_REGION="ap-northeast-1"
```

## Installation

The simplest way to install aws-spec is to use [Bundler](http://bundler.io/).

```
$ bundle install
```

## Running test
Execute command

```
$ bundle exec rspec
```
