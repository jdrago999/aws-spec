# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "RDS" do
  rds = AWS::RDS.new

  describe "DB Instances" do
    subject(:db_instances) do
      rds.db_instances
    end
    it { should have(0).db_instances }
  end

end
