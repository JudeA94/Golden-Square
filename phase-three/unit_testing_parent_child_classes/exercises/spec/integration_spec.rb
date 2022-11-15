require 'track'
require 'music_library'

describe 'integration' do
  it 'adds and lists tracks' do
    lib = MusicLibrary.new
    track1 = Track.new('title1','artist1')
    track2 = Track.new('title2','artist2')
    lib.add(track1)
    lib.add(track2)
    expect(lib.all).to eq [track1, track2]
  end
  it 'searches tracks' do
    lib = MusicLibrary.new
    track1 = Track.new('one two three', 'four five')
    track2 = Track.new('six seven eight', 'nine ten')
    lib.add(track1)
    lib.add(track2)
    expect(lib.search('three')).to eq [track1]
  end
end