require_relative "../spec_helper"

describe "AutoScaling" do

  before do
    @auto_scaling = AWS::AutoScaling.new
  end

  describe "Auto Scaling Groups" do
    subject { @auto_scaling.groups }
    it { should have(0).auto_scaling_groups }
  end

  describe "Launch Configurations" do
    subject { @auto_scaling.launch_configurations }
    it { should have(0).launch_configurations }
  end

  describe "Scheduled Actions" do
    subject { @auto_scaling.scheduled_actions }
    it { should have(0).scheduled_actions }
  end

end
