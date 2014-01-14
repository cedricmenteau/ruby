
#Prendre la string et la transformer en array (split)
#Premiere lettre placée à la fin
#Remplacer la 1ere lettre par "l"
#Si déjà le cas alors "l" est remplacé par "longe"
#Ajouter un suffixe au hazard
#suffixe = [i, é, ès, em, as, ic, oque, atte, qué, quème, uche, ou puche]


=begin
def louchebem(word) 
  letter_array = word.split("").map { |letter| letter.downcase }
  voyelles_array = %w(a e i o u y) 
  suffix_array = %w(em as ic oque at uche) 
  letter_array.each_with_index { |letter, index| letter_array.include? letter if voyelles_array[0..-1]}
  
  "l" + "#{letter_array[index..-1]* ""}" + "#{letter_array(0..index-1)}" + "#{suffix_array[rand(suffix_array.length)]}"
end
=end

def louchebem(word) 
  first_consonant = word.split(/["a", "e", "i", "o", "u", "y"]/).first
  suffix_array = %w(em es as ic oque at uche)
  word_troncate = word.delete(first_consonant)
  louchebem_word = "l" + word_troncate + first_consonant.downcase + suffix_array[rand(suffix_array.length)]
  return louchebem_word
end

def louchebem_translate(sentence)
  words = sentence.split(" ")
  words.map {|word| louchebem(word)}.join(" ")
end

puts "Tapez votre phrase à traduire"
sentence = gets.chomp

puts louchebem_translate(sentence) 
