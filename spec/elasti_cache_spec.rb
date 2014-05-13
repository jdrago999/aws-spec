require "spec_helper"

describe "ElastiCache" do
  before do
    @elasti_cache = AWS::ElastiCache.new
  end

  describe "Clusters" do
    subject { @elasti_cache.client.describe_cache_clusters[:cache_clusters] }
    it { should have(0).clusters }
  end

end
