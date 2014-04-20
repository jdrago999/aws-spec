require_relative "spec_helper"

describe "CloudFront" do
  cf = AWS::CloudFront.new

  describe "Distributions" do
    subject(:distributions) do
      cf.client.list_distributions[:items]
    end
    it { should have(0).distributions }
  end

end
