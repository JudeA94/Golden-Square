require 'track'

describe Track do
  context '#matches' do
    it 'Returns true if the keyword matches either the title' do
      track1 = Track.new('one two','three four')
      expect(track1.matches?('one')).to eq true
    end
    it 'Returns true if the keyword matches either the artist' do
      track1 = Track.new('one two','three four')
      expect(track1.matches?('three')).to eq true
    end
    it "Returns false if the keyword doesn't matches either the title or artist" do
      track1 = Track.new('one two','three four')
      expect(track1.matches?('five')).to eq false
    end
  end
end
