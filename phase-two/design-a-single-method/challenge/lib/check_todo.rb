def check_todo(text)
  if text.is_a? String
    text.include?('#TODO')
  else
    fail "This isn't something I can check!"
  end
end