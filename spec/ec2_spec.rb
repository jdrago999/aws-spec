require_relative "spec_helper"

describe "EC2" do
  ec2 = AWS::EC2.new

  describe "VPCs" do
    subject(:vpcs) do
      ec2.vpcs
    end
    it { should have(1).vpcs }
  end

  describe "Subnets" do
    subject(:subnets) do
      ec2.subnets
    end
    it { should have(2).subnets }
  end

  describe "VPN Gateways" do
    subject(:vpn_gateways) do
      ec2.vpn_gateways
    end
    it { should have(0).vpn_gateways }
  end

  describe "Internet Gateways" do
    subject(:internet_gateways) do
      ec2.internet_gateways
    end
    it { should have(1).internet_gateways }
  end

  describe "Customer Gateways" do
    subject(:customer_gateways) do
      ec2.customer_gateways
    end
    it { should have(0).customer_gateways }
  end

  describe "VPN Connections" do
    subject(:vpn_connections) do
      ec2.vpn_connections
    end
    it { should have(0).vpn_connections }
  end

  describe "Network ACLs" do
    subject(:network_acls) do
      ec2.network_acls
    end
    it { should have(1).network_acls }
  end

  describe "Route Tables" do
    subject(:route_tables) do
      ec2.route_tables
    end
    it { should have(1).route_tables }
  end

  describe "DHCP Optinos" do
    subject(:dhcp_options) do
      ec2.dhcp_options
    end
    it { should have(1).dhcp_options }
  end

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

