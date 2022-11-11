def make_snippet(str)
  words_arr = str.split(' ')
  if words_arr.length > 5
    words_arr[0..4].join(' ') + '...'
  else
    str
  end
end