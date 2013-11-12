# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "ELB" do
  elb = AWS::ELB.new

  describe "Load Balancers" do
    subject(:load_balancers) do
      elb.load_balancers
    end
    it { should have(0).load_balancers }
  end

end
