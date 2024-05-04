RSpec.describe "versions" do
  describe "ruby" do
    it "has version 3.1.4" do
      expect(RUBY_VERSION).to eq("3.1.4")
    end
  end

  describe "sinatra" do
    it "has version 3.1.4" do
      expect(Sinatra::VERSION).to eq("3.1.4")
    end
  end
end
