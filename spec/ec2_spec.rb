# -*- coding: utf-8 -*-
require_relative "spec_helper"

describe "EC2" do
  ec2 = AWS::EC2.new

  describe "Instances" do
    subject(:instances) do
      ec2.instances
    end
    it { should have(0).instances }
  end

  describe "Volumes" do
    subject(:volume) do
      ec2.volumes
    end
    it { should have(0).volumes }
  end

  describe "Elastic IPs" do
    subject(:elastic_ips) do
      ec2.elastic_ips
    end
    it { should have(0).elastic_ips }
  end

  describe "Key Pairs" do
    subject(:key_pairs) do
      ec2.key_pairs
    end
    it { should have(0).key_pairs }
  end

  describe "Snapshots" do
    subject(:snapshots) do
      ec2.snapshots.with_owner(:self)
    end
    it { should have(0).snapshots }
  end

  describe "Security Group" do
    subject(:security_groups) do
      ec2.security_groups
    end
    it { should have(1).security_groups }
  end

end

