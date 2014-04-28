require "spec_helper"

describe "DynamoDB" do
  dynamo_db = AWS::DynamoDB.new

  describe "Tables" do
    subject(:tables) do
      dynamo_db.tables
    end
    it { should have(0).tables }
  end

end
