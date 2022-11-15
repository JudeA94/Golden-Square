class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times.\nPlease enter a string"
    str = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    repeats = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts str*repeats
  end
end
