require 'read_time'
describe 'read_time method' do
  context 'When given a string' do
    it 'if empty, returns the correct estimate' do
      expect(read_time('')).to eq '0 minutes 0 seconds'
    end
    it 'if less than 200 words returns the correct estimate' do
      expect(read_time('hello '*100)).to eq '0 minutes 30 seconds'
    end
    it 'if more than 200 words returns the correct estimate' do
      expect(read_time('hello '*300)).to eq '1 minutes 30 seconds'
    end
    it 'if exactly 200 words returns the correct estimate' do
      expect(read_time('hello '*200)).to eq '1 minutes 0 seconds'
    end
    it 'rounds up appropriately' do
      expect(read_time('hello '*376)).to eq '1 minutes 53 seconds'
    end
    it 'it rounds up on edge cases' do
      expect(read_time('hello '*375)).to eq '1 minutes 53 seconds'
    end
    it 'it rounds down appropriately' do
      expect(read_time('hello '*374)).to eq '1 minutes 52 seconds'
    end
  end
  context 'when not given a string' do
    it 'returns an error message' do
      expect { read_time(123) }.to raise_error "You don't really read that!"
    end
  end
end