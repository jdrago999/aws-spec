require_relative "../spec_helper"

describe "DynamoDB" do
  before do
    @dynamo_db = AWS::DynamoDB.new
  end

  describe "Tables" do
    subject { @dynamo_db.tables }
    it { is_expected have(0).tables }
  end

end
