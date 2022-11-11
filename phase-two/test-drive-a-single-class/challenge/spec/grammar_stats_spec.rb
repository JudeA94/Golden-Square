require 'grammar_stats'
describe GrammarStats do
  context 'when constructed' do
    it 'ctreates an nstance of GrammarStats' do
      grammar_stat = GrammarStats.new
      expect(grammar_stat).to be_a GrammarStats
    end
  end
  context 'when calling check on instances of GrammarStats' do
    it 'fails with a message if not given a string' do
      grammar_stat = GrammarStats.new
      expect{ grammar_stat.check([1, 2, 3]) }.to raise_error "That's not a sentence!"
    end
    it "fails with a message if the string isn't long enough (less than two characters)" do
      grammar_stat = GrammarStats.new
      expect{ grammar_stat.check('a') }.to raise_error "That's not a sentence!"
    end
    it "returns false if it's missing a first capital letter and sentence-ending punctuation mark" do
      grammar_stat = GrammarStats.new
      expect(grammar_stat.check('hello, world')).to eq false
    end
    it "returns false if it's missing a first capital letter but does have sentence-ending punctuation mark" do
      grammar_stat = GrammarStats.new
      expect(grammar_stat.check('hello, world!')).to eq false
    end
    it "returns false if it has first capital letter but missing sentence-ending punctuation mark" do
      grammar_stat = GrammarStats.new
      expect(grammar_stat.check('Hello, world')).to eq false
    end
    it "returns true if it has first capital letter and sentence-ending punctuation mark" do
      grammar_stat = GrammarStats.new
      expect(grammar_stat.check('Hello, world!')).to eq true
    end
  end
  context 'when calling percentage_good on instances of GrammarStats' do
    it "raises error if no grammar has been checked yet" do
      grammar_stat = GrammarStats.new
      expect{ grammar_stat.percentage_good }.to raise_error "You haven't checked any grammar yet!"
    end
    it "returns 100 if all grammar has been correct" do
      grammar_stat = GrammarStats.new
      grammar_stat.check('Hello, world!')
      expect(grammar_stat.percentage_good).to eq 100
    end
    it "returns the right percentage if some grammar is good and some bad" do
      grammar_stat = GrammarStats.new
      grammar_stat.check('Hello, world!')
      grammar_stat.check('Hello, world!')
      grammar_stat.check('Hello, world')
      expect(grammar_stat.percentage_good).to eq 67
    end
  end
end

