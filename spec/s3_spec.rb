require_relative "spec_helper"

describe "S3" do
  s3 = AWS::S3.new

  describe "Buckets" do
    subject(:buckets) do
      s3.buckets
    end
    it { should have(0).buckets }
  end

end
