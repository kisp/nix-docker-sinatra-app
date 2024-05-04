require "sinatra"

RSpec.describe "versions" do
  describe "ruby" do
    let(:expected) { "3.1.4" }

    it "has version #{expected}" do
      expect(RUBY_VERSION).to eq(expected)
    end
  end

  describe "sinatra" do
    let(:expected) { "4.0.0" }

    it "has version #{expected}" do
      expect(Sinatra::VERSION).to eq(expected)
    end
  end
end
