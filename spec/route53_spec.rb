# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "Route53" do
  r53 = AWS::Route53.new

  describe "Hosted Zones" do
    subject(:hosted_zones) do
      r53.hosted_zones
    end
    it { should have(0).hosted_zones }
  end

end
