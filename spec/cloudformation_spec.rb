# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "CloudFormation" do
  cf = AWS::CloudFormation.new

  describe "Stacks" do
    subject(:stacks) do
      cf.stacks
    end
    it { should have(0).stacks }
  end

end
