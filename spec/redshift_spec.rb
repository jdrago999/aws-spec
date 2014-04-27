require_relative "spec_helper"

describe "Redshift" do
  redshift = AWS::Redshift.new

  describe "Clusters" do
    subject(:clusters) do
      redshift.client.describe_clusters[:clusters]
    end
    it { should have(0).clusters }
  end

end
