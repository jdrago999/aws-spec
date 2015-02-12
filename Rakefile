require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc "Run all specs"
task default: :spec

desc "Run tests that is checking initial status of AWS account"
RSpec::Core::RakeTask.new(:initial_status) do |t|
  t.pattern = "spec/default/*_spec.rb"
end

desc "Run all example tests"
RSpec::Core::RakeTask.new(:example) do |t|
  t.pattern = "spec/example/*/*_spec.rb"
end
