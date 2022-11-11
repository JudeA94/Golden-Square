class TrackList
  def initialize
    @track_list = Array.new
  end

  def list
    @track_list
  end

  def add(artist,title)
    @track_list << "#{artist}: #{title}"
  end

  def view
    raise "Track list is empty!" if @track_list.empty?
    @track_list.join(', ')
  end
end