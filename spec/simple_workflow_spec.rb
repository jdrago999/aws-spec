require "spec_helper"

describe "SimpleWorkflow" do
  before do
    @simple_workflow = AWS::SimpleWorkflow.new
  end

  describe "Domains" do
    subject { @simple_workflow.domains }
    it { should have(0).domains }
  end

end
