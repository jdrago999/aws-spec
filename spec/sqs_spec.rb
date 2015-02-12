require "spec_helper"

describe "SQS" do
  before do
    @sqs = AWS::SQS.new
  end

  describe "Queues" do
    subject { @sqs.queues }
    it { is_expected have(0).queues }
  end

end
