require_relative "../spec_helper"

describe "EMR" do
  before do
    @emr = AWS::EMR.new
  end

  describe "Job Flows" do
    subject { @emr.job_flows }
    it { is_expected have(0).job_flows }
  end

end
