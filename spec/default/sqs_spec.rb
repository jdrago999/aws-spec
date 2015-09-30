require_relative "../spec_helper"

describe "SQS" do
  before do
    @sqs = AWS::SQS.new
  end

  describe "Queues" do
    subject { @sqs.queues }
    it { should have(0).queues }
  end

end
