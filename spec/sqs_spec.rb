# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "SQS" do
  sqs = AWS::SQS.new

  describe "Queues" do
    subject(:queues) do
      sqs.queues
    end
    it { should have(0).queues }
  end

end
