require 'count_words'
describe "count_words method" do
  context "when given an empty string" do
    it "returns 0" do
      expect(count_words('')).to eq 0
    end
  end
  context "when given a word" do
    it "returns 1" do
      expect(count_words("Hello")).to eq 1
    end
  end
  context "when given a sentence with five words" do
    it "returns 5" do
      expect(count_words("Hello my name is Jude")).to eq 5
    end
  end
  context "when given a sentence with five words including special characters like commas and exclamation marks" do
    it "returns 5" do
      expect(count_words("Hello, my name is Jude!")).to eq 5
    end
  end
end