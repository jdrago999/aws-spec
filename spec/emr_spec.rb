require_relative "spec_helper"

describe "EMR" do
  emr = AWS::EMR.new

  describe "Job Flows" do
    subject(:job_flows) do
      emr.job_flows
    end
    it { should have(0).job_flows }
  end

end
