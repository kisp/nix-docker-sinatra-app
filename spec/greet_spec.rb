require "greet"

RSpec.describe "greet" do
  it "says Hello <name>!" do
    expect(greet("Jane")).to eq("Hello Jane!")
  end
end
