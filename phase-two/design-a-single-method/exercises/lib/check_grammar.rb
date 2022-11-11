def check_grammar(sentence)
  if (sentence.is_a? String) and (sentence.length >= 2)
    if sentence.chars.first == sentence.chars.first.capitalize && ['?', '!', '.'].include?(sentence.chars.last)
      true
    else
      false
    end
  else
    raise "That's not a sentence!"
  end
end
