require_relative "../spec_helper"

describe "ELB" do
  before do
    @elb = AWS::ELB.new
  end

  describe "Load Balancers" do
    subject { @elb.load_balancers }
    it { is_expected have(0).load_balancers }
  end

end
