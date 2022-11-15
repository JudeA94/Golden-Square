class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    @title.match?(keyword) or @artist.match?(keyword)
  end
end