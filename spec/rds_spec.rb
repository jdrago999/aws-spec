require "spec_helper"

describe "RDS" do
  before do
    @rds = AWS::RDS.new
  end

  describe "DB Instances" do
    subject { @rds.db_instances }
    it { should have(0).db_instances }
  end

end
