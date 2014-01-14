def anagrams?( a_string, another_string )
 a = a_string.delete(" ").downcase.chars.to_a
 b = another_string.delete(" ").downcase.chars.to_a
 a.sort == b.sort
end

=begin
  Objectif - Definir si a_string est l'anagram de another_string
  Vérification a_string == another_string => true
  #1 / Prendre la première string et la convertir en minuscule pour éviter les erreurs liées aux majuscules (.downcase)
  #2 / Isoler chacune des lettres dans un array et les convertir en string
  #3 / Les classer par ordre aphabétique
  #4 / Appliquer la même méthode à la deuxième string et comparer les deux
=end

def anagrams_on_steroids?( a_string, another_string )
	hash1 = Hash.new { |h, k| h[k] = 0 }
  hash2 = Hash.new { |h, k| h[k] = 0 }
# On crée un hash pour chaque array et on compare le contenu des deux hash. Si une clé existe déjà, on augmente sa valeur de 1 (0 étant sa valeur par défaut)
  a_string.delete(" ").downcase.chars.to_a.each { |x| hash1[x] += 1}
  another_string.delete(" ").downcase.chars.to_a.each { |x| hash2[x] +=1 }

  hash1 == hash2  
end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true