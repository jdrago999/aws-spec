require "spec_helper"

describe "DynamoDB" do
  before do
    @dynamo_db = AWS::DynamoDB.new
  end

  describe "Tables" do
    subject { @dynamo_db.tables }
    it { should have(0).tables }
  end

end
