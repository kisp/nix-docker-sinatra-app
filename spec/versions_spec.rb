require "sinatra"

RSpec.describe "versions" do
  describe "ruby" do
    expected = "3.1.4"

    it "has version #{expected}" do
      expect(RUBY_VERSION).to eq(expected)
    end
  end

  describe "sinatra" do
    expected = "3.2.0"

    it "has version #{expected}" do
      expect(Sinatra::VERSION).to eq(expected)
    end
  end
end
