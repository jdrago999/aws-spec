require_relative "../spec_helper"

describe "CloudFront" do
  before do
    @cloud_front = AWS::CloudFront.new
  end

  describe "Distributions" do
    subject { @cloud_front.client.list_distributions[:items] }
    it { is_expected have(0).distributions }
  end

end
