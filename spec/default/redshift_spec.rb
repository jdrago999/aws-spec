require_relative "../spec_helper"

describe "Redshift" do
  before do
    @redshift = AWS::Redshift.new
  end

  describe "Clusters" do
    subject { @redshift.client.describe_clusters[:clusters] }
    it { should have(0).clusters }
  end

end
