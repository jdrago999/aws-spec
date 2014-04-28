require "spec_helper"

describe "ElastiCache" do
  ec = AWS::ElastiCache.new

  describe "Clusters" do
    subject(:clusters) do
      ec.client.describe_cache_clusters[:cache_clusters]
    end
    it { should have(0).clusters }
  end

end
