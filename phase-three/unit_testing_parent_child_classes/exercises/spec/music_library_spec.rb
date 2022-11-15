require 'music_library'

describe MusicLibrary do
  it 'adds and lists tracks' do
    lib = MusicLibrary.new
    track1 = double :track
    track2 = double :track
    lib.add(track1)
    lib.add(track2)
    expect(lib.all).to eq [track1, track2]
  end
  it 'searches tracks' do
    lib = MusicLibrary.new
    track1 = double :track
    expect(track1).to receive(:matches?).with("three").and_return(true)
    track2 = double :track
    expect(track2).to receive(:matches?).with("three").and_return(false)
    lib.add(track1)
    lib.add(track2)
    expect(lib.search('three')).to eq [track1]
  end
end




# RSpec.describe Diary do
#   it "counts the words in its entries" do
#     diary = Diary.new
#     diary.add(double(:fake_diary_entry, count_words: 2))
#     diary.add(double(:fake_diary_entry, count_words: 3))
#     expect(diary.count_words).to eq 5
#   end
# end