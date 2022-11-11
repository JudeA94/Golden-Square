def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p "at the start the characters of the key are inserted into a array containing the letters a to z"
  p "next, duplicate letters are removed from our array"
  p "the output of the cipher theswiftfoxjumpedoverthelazydogshould should be: EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  p "a second array is created out of the characters in the argument plaintext"
  p "the .chr value of each characters index if 65.chr = 'A' "
  p "for each character we are adding the index nymber to push the value that we call chr on"
  p "In other words, t in theswiftbrownfo... has an index value of 4 and therefore pushing a value of 4 spaces down the alphabet"
  p "this process also capitalises the output"
  p "outputting E"
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p "at this point ciphertext is equal to our encoded plaintext argument in the encode method"
  p "our key remains the same (unaltered)"

  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  p "we are creating a new array that iterates on our encoded plain text argument(ciphertext)"
  p "this is going to restore the characters back to there previous state"
  p "this uses an inverse mapping of .chr called .ord"
  return plaintext_chars.join
  p "this is converting the decoded array into a string and returning the output to the user"
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"



=begin 

ORIGINAL CODE

def encode(plaintext, key)
cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
ciphertext_chars = plaintext.chars.map do |char|
  (65 + cipher.find_index(char)).chr
end
return ciphertext_chars.join
end

def decode(ciphertext, key)
cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
plaintext_chars = ciphertext.chars.map do |char|
  cipher[65 - char.ord]
end
return plaintext_chars.join
end 

=end