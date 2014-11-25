require "spec_helper"

describe "EMR" do
  before do
    @emr = AWS::EMR.new
  end

  describe "Job Flows" do
    subject { @emr.job_flows }
    it { should have(0).job_flows }
  end

end
