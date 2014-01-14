#Solution de Mac

def group_anagrams(words)
solution = []
words.map { |word| alphabetize(word) }.uniq!.each do |scrambled_word, memo|
  solution << words.select { |word| alphabetize(word) == scrambled_word}
end
puts solution.to_s
end

def alphabetize(word)
  word.split('').sort.join
end

# input:
group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# output:
# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

# HINT: you can quickly tell if two words are anagrams by sorting their letters, keeping in mind that upper vs lowercase doesn't matter