require_relative "spec_helper"

describe "SimpleWorkflow" do
  swf = AWS::SimpleWorkflow.new

  describe "Domains" do
    subject(:domains) do
      swf.domains
    end
    it { should have(0).domains }
  end

end
