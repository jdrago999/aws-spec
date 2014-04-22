require "spec_helper"

describe "SimpleDB" do
  sdb = AWS::SimpleDB.new

  describe "Domains" do
    subject(:domains) do
      sdb.domains
    end
    it { should have(0).domains }
  end

end
