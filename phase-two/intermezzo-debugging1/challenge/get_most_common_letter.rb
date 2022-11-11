def get_most_common_letter(text)
  counter = Hash.new(0)
  characters = text.chars
  characters.delete(' ')
  characters.each do |char|
    counter[char] += 1
    #p "#{char} : #{counter[char]}"
  end
  p counter
  counter.sort_by { |k, v| v }.reverse[0][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

# ORIGINAL CODE

# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   text.chars.each do |char|
#     counter[char] += 1
#   end
#   counter.to_a.sort_by { |k, v| v }[0][0]
# end

# Intended output:
#  
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
