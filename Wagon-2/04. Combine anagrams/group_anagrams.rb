def group_anagrams(words)
  #sorting = Hash.new { |h, k| h[k] = 0 }
  print word = words.collect { |x| x.split("").sort}
  puts word.uniqu { |s| s.first}
end

# input:
group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# output:
# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter

#Transformer chacune des strings en sous-array
#Spliter chacune des lettres des sous-arrays en string et les trier
#Comparer chacune des sous-arrays et si identique += 1 