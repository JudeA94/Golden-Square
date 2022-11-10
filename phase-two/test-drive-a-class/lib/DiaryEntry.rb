class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @words_array = contents.split
    @words_left = contents.split
  end

  attr_reader :title, :contents

  def count_words
    @words_array.length
  end

  def reading_time(wpm)
    raise 'Reading speed must be positive!' unless wpm > 0

    @mins_float = count_words / wpm.to_f
    whole_mins = count_words / wpm
    secs = ((@mins_float - whole_mins) * 60).round
    "#{whole_mins} minutes #{secs} seconds"
  end

  def reading_chunk(wpm, minutes)
    reading_time(wpm)
    raise 'Reading speed must be positive!' unless wpm > 0
    if minutes >= @mins_float
      begin
        @words_left.join(' ')
      ensure
        @words_left = @contents.split
      end
    else
      num_of_words_readable = ((minutes / @mins_float) * count_words).round
      begin
        @words_left[0...num_of_words_readable].join(' ')
      ensure
        @words_left.shift(num_of_words_readable)
         if @words_left.empty?
           @words_left = @words_array
         end
      end
    end
  end
end
