require 'check_grammar'
describe "check_grammar method" do
  context "when given a string" do
    it "returns false if it's missing a first capital letter and sentence-ending punctuation mark" do
      expect(check_grammar('hello world')).to eq false
    end
    it "returns false if it's missing a first capital letter but does have sentence-ending punctuation mark" do
      expect(check_grammar('hello world.')).to eq false
    end
    it "returns false if it has first capital letter but missing sentence-ending punctuation mark" do
      expect(check_grammar('Hello world')).to eq false
    end
    it "returns true if it has first capital letter and sentence-ending punctuation mark" do
      expect(check_grammar('Hello world!')).to eq true
    end
    it "fails with a message if the string isn't long enough (less than two characters)" do
      expect { check_grammar([1,2,3]) }.to raise_error "That's not a sentence!"
    end
  end
  context "when not given a string" do
    it "fails with a message" do
      expect { check_grammar([1,2,3]) }.to raise_error "That's not a sentence!"
    end
  end
end