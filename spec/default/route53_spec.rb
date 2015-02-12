require_relative "../spec_helper"

describe "Route53" do
  before do
    @route53 = AWS::Route53.new
  end

  describe "Hosted Zones" do
    subject { @route53.hosted_zones }
    it { is_expected have(0).hosted_zones }
  end

end
