require_relative "../spec_helper"

describe "CloudFormation" do
  before do
    @cloud_formation = AWS::CloudFormation.new
  end

  describe "Stacks" do
    subject { @cloud_formation.stacks }
    it { is_expected have(0).stacks }
  end

end
