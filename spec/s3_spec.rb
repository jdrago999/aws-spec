require "spec_helper"

describe "S3" do
  before do
    @s3 = AWS::S3.new
  end

  describe "Buckets" do
    subject { @s3.buckets }
    it { should have(0).buckets }
  end

end
