require_relative "../spec_helper"

describe "S3" do
  before do
    @s3 = AWS::S3.new
  end

  describe "Buckets" do
    subject { @s3.buckets }
    it { is_expected have(0).buckets }
  end

end
