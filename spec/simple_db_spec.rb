require "spec_helper"

describe "SimpleDB" do
  before do
    @simple_db = AWS::SimpleDB.new
  end

  describe "Domains" do
    subject { @simple_db.domains }
    it { is_expected have(0).domains }
  end

end
