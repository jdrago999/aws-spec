require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc "To test that it is initial status of AWS account"
RSpec::Core::RakeTask.new(:initial_status) do |t|
  t.pattern = "spec/default/*_spec.rb"
end
