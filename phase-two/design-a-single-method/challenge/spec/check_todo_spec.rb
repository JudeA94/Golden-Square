require 'check_todo'
describe 'check_todo method' do
  context 'when given a string' do
    it 'returns false for an empty string' do
      expect(check_todo('')).to eq false
    end
    it "returns false if the string doesn't contain #TODO in any way" do
      expect(check_todo("hello WORLD")).to eq false
    end
    it "returns false for edge case 1 (includes todo not #TODO)" do
      expect(check_todo("i need todo something")).to eq false
    end
    it "returns false for edge case 2 (contains #todo in lower case)" do
      expect(check_todo("i need to #todo something")).to eq false
    end
    it "returns true if #TODO is at the start of the string" do
      expect(check_todo("#TODO take out the bins")).to eq true
    end
    it "returns true if #TODO is at the end for the string" do
      expect(check_todo("go for a run #TODO")).to eq true
    end
    it "returns true if #TODO is inside the string (not end or start)" do
      expect(check_todo("making lunch is a #TODO of mine!")).to eq true
    end
  end
  context "when not given a string" do
    it 'fails with an error message' do
      expect { check_todo([1,2,3]) }.to raise_error "This isn't something I can check!"
    end
  end
end
