require 'make_snippet'
describe 'make_snippet method' do
  context 'when given an empty string' do
    it 'returns the empty string' do
      expect(make_snippet('')).to eq ''
    end
  end
  context 'when given a sentence five words or less' do
    it 'returns the sentence' do
      result = make_snippet('Hello my name is Jude')
      expect(result).to eq 'Hello my name is Jude'
    end
  end
  context 'when given a sentence over five words long' do
    it 'returns the first five words followed by ...' do
      expect(make_snippet('Hello I am currently writing a rspec test.')).to eq 'Hello I am currently writing...'
    end
  end
end
