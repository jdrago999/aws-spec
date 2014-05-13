require "spec_helper"

describe "CloudFormation" do
  before do
    @cloud_formation = AWS::CloudFormation.new
  end

  describe "Stacks" do
    subject { @cloud_formation.stacks }
    it { should have(0).stacks }
  end

end
