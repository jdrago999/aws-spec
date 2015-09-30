require_relative "../spec_helper"

describe "EC2" do

  before do
    @ec2 = AWS::EC2.new
    @number_of_az = @ec2.availability_zones.count
  end

  describe "VPCs" do
    subject { @ec2.vpcs }
    it { should have(1).vpcs }
  end

  describe "Subnets" do
    subject { @ec2.subnets }
    it { should have(@number_of_az).subnets }
  end

  describe "VPN Gateways" do
    subject { @ec2.vpn_gateways }
    it { should have(0).vpn_gateways }
  end

  describe "Internet Gateways" do
    subject { @ec2.internet_gateways }
    it { should have(1).internet_gateways }
  end

  describe "Customer Gateways" do
    subject { @ec2.customer_gateways }
    it { should have(0).customer_gateways }
  end

  describe "VPN Connections" do
    subject { @ec2.vpn_connections }
    it { should have(0).vpn_connections }
  end

  describe "Network ACLs" do
    subject { @ec2.network_acls }
    it { should have(1).network_acls }
  end

  describe "Route Tables" do
    subject { @ec2.route_tables }
    it { should have(1).route_tables }
  end

  describe "DHCP Optinos" do
    subject { @ec2.dhcp_options }
    it { should have(1).dhcp_options }
  end

  describe "Instances" do
    subject { @ec2.instances }
    it { should have(0).instances }
  end

  describe "Volumes" do
    subject { @ec2.volumes }
    it { should have(0).volumes }
  end

  describe "Elastic IPs" do
    subject { @ec2.elastic_ips }
    it { should have(0).elastic_ips }
  end

  describe "Key Pairs" do
    subject { @ec2.key_pairs }
    it { should have(0).key_pairs }
  end

  describe "Snapshots" do
    subject { @ec2.snapshots.with_owner(:self) }
    it { should have(0).snapshots }
  end

  describe "Security Group" do
    subject { @ec2.security_groups }
    it { should have(1).security_groups }
  end

end
