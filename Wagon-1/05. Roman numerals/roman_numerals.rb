def old_roman_numeral(an_integer)
  # your code goese here
end

def roman_numeral(an_integer)
  # your code goese here for the new-style version
end

puts "My nice roman numeral tests" 
# Write a nice testing script herebelow !

=begin
Normal base 10 || 15 = 1 x 10 + 5 x 1

> Créer des array
A = [X, V, I]
B = [10, 5, 1]
N = [n1, n2, n3]
N94 = [n9, n0, n4]

étape 1 > n1/10 & conserver le reste
étape 2 > n2/5 & conserver le reste
étape 3 > n3/1

def old_roman_numeral(an_integer)
  n_x, r_x = (an_integer / 10), (an_integer % 10)
  n_v, r_v = (r_x / 5), (r_x % 5)
  n_i = r_v

  puts "X" * n_x + "V" * n_v + "I" * n_i
end

=end