require 'gratitudes'
describe Gratitudes do
  it "initially creates an empty array" do
    gratitude = Gratitudes.new
    expect(gratitude.format).to eq "Be grateful for: "
  end
  it "allows you to add string value to the array" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    expect(gratitude.format).to eq "Be grateful for: food"
  end
  it "allows you to add multiple string values to the array" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    gratitude.add("water")
    expect(gratitude.format).to eq "Be grateful for: food, water"
  end
end
