require_relative "../../spec_helper"

describe "EC2" do
  before :all do
    @ec2 = AWS::EC2.new
    name = File.basename(__FILE__).split("_spec.rb").first
    @instance = @ec2.instances.find { |i| i.tags[:Name] == name }
  end

  describe "instance" do
    it { @instance.should_not be_nil }
  end

  describe "Block devices" do
    before :all do
      @devices = @instance.block_devices
    end
    it { @devices.count.should == 1 }

    describe "/dev/sda1" do
      before :all do
        @ebs = @devices.find { |v| v[:device_name] == "/dev/sda1" }[:ebs]
        @volume = @ec2.volumes[@ebs[:volume_id]]
      end

      it { @ebs[:delete_on_termination].should be_true }
      it { @volume.iops.should be_nil }
      it { @volume.size.should == 8 }
    end
  end

  describe "Security Groups" do
    it { @instance.security_groups.first.name.should == "www" }
  end

  describe "Private IP Address" do
    it { @instance.private_ip_address.should == "192.168.10.10" }
  end

  describe "Public IP Address" do
    it { @instance.public_ip_address.should == "54.238.176.185" }
  end

  describe "Instance Type" do
    it { @instance.instance_type.should == "t1.micro" }
  end

  describe "AMI Name" do
    it { @instance.image.name.should == "amzn-ami-pv-2013.03.1.x86_64-ebs" }
  end

end
