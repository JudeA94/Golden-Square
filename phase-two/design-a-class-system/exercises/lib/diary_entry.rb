class DiaryEntry
  def initialize(date, contents)
    @date = date
    @contents = contents
  end

  def date
    @date
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(' ').count
  end

  def reading_time(wpm)
    raise 'wpm must be positive' if wpm <= 0
    (count_words / wpm.to_f).ceil
  end

end