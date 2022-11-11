class GrammarStats
  def initialize
    @good = 0
    @total = 0
  end

  def check(text)
    if (text.is_a? String) and (text.length >= 2)
      if text.chars.first == text.chars.first.capitalize && ['?', '!', '.'].include?(text.chars.last)
        @good += 1.0
        @total += 1
        true
      else
        @total += 1
        false
      end
    else
      raise "That's not a sentence!"
    end
  end

  def percentage_good
    raise  "You haven't checked any grammar yet!" unless @total > 0
    (100 * @good / @total).round
  end
end
