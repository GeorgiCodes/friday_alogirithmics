require "spec_helper"

describe "Cache" do

  # before :each do
  # @restaurant = Restaurant.new
  # end

  describe "#set" do
    it "returns true when setting value on cache" do

      cache = LRUCache.new
      result = cache.set("key", 123)

      expect(cache.size).to be 1
    end

    it "returns true when setting second value on cache" do

      cache = LRUCache.new
      cache.set("key", 123)
      result = cache.set("key1", 1234)

      expect(cache.size).to be 2
      end

    it "updates value returns true when setting existing value" do

      cache = LRUCache.new
      cache.set("key", 123)
      result = cache.set("key", 1234)

      expect(cache.size).to be 1
    end
  end
end