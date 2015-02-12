require_relative "../../../spec_helper"

describe "Security Group" do
  before :all do
    @ec2 = AWS::EC2.new
    name = File.basename(__FILE__).split("_spec.rb").first
    @security_group = @ec2.security_groups.find { |s| s.name == name }
    @inbound = [
      {
        groups: [],
        ip_ranges: [ { cidr_ip: "114.166.221.144/32" } ],
        ip_protocol: "tcp",
        from_port: 22,
        to_port: 22
      }, {
        groups: [],
        ip_ranges: [ { cidr_ip: "0.0.0.0/0" } ],
        ip_protocol: "tcp",
        from_port: 80,
        to_port: 80
      }
    ]
    @outbound = [
      {
        groups: [],
        ip_ranges: [ { cidr_ip: "0.0.0.0/0" } ],
        ip_protocol: "-1"
      }
    ]
  end

  describe "security_groups" do
    it { @security_group.is_expected_not be_nil }
  end

  describe "vpc?" do
    it { @security_group.vpc?.is_expected be_true }
  end

  describe "inbound" do
    it { @security_group.ip_permissions_list.eql?(@inbound).is_expected be_true }
  end

  describe "outbound" do
    it { @security_group.ip_permissions_list_egress.eql?(@outbound).is_expected be_true }
  end

end
