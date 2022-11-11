require 'tracks'
describe TrackList do
  context "on construction" do
    it "creates an instance of the TrackList class" do
      tracks = TrackList.new
      expect(tracks).to be_a TrackList
    end
    it "creates an empty track_list array" do
      tracks = TrackList.new
      expect(tracks.list).to eq Array.new
    end
  end
  context "add method" do
    it "adds a song to the track_list" do
      tracks = TrackList.new
      tracks.add("Courtney Barnett", "Depreston")
      expect(tracks.list).to eq ["Courtney Barnett: Depreston"]
    end
    it "adds a song to the track_list" do
      tracks = TrackList.new
      tracks.add("Courtney Barnett", "Depreston")
      tracks.add("Loyle Carner", "No CD")
      expect(tracks.list).to eq ["Courtney Barnett: Depreston","Loyle Carner: No CD"]
    end
  end
  context "view method" do
    it "raises error if track list is empty" do
      tracks = TrackList.new
      expect{ tracks.view }.to raise_error "Track list is empty!"
    end
    it "returns the track list in a nice format" do
      tracks = TrackList.new
      tracks.add("Courtney Barnett", "Depreston")
      tracks.add("Loyle Carner", "No CD")
      expect(tracks.view).to eq "Courtney Barnett: Depreston, Loyle Carner: No CD"
    end
  end
end
