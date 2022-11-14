class Diary
  attr_reader(:entries)
  
  def initialize
    @entries = Array.new
  end

  def entries
    @entries
  end

  def add(entry)
    @entries << entry
  end

  def read(entry)
    entry.contents
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    raise "Diary empty" if @entries.empty?
    sorted_entries = @entries.sort_by{|entry| entry.reading_time(wpm)}
    sorted_entries.select{|entry| entry.reading_time(wpm) <= minutes}
    "#{sorted_entries[0].date}: #{sorted_entries[0].contents}"
  end
end