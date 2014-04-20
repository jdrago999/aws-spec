require_relative "spec_helper"

describe "AutoScaling" do
  auto_scaling = AWS::AutoScaling.new

  describe "Auto Scaling Groups" do
    subject(:auto_scaling_groups) do
      auto_scaling.groups
    end
    it { should have(0).auto_scaling_groups }
  end

  describe "Launch Configurations" do
    subject(:launch_configurations) do
      auto_scaling.launch_configurations
    end
    it { should have(0).launch_configurations }
  end

  describe "Scheduled Actions" do
    subject(:scheduled_actions) do
      auto_scaling.scheduled_actions
    end
    it { should have(0).scheduled_actions }
  end

end
