def read_time(text)
  if text.is_a? String
    words = text.split(' ').length
    mins = words / 200
    secs = (((words - 200 * mins) / 200.0) * 60).round
    "#{mins} minutes #{secs} seconds"
  else
    fail "You don't really read that!"
  end
end
