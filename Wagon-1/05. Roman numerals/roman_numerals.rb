def roman_numeral(an_integer)
  roman = {1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I"}
  modern = {"DCCCC" => "CM", "LXXXX" => "XC", "XXXX" => "XL", "VIIII" => "IX", "IIII" => "IV"}
  modern_roman_string = ""
        
  roman.each do |key, value|
    quotient = an_integer / key
	  rest = an_integer % key
	  modern_roman_string += (value * quotient)
	  an_integer = rest
	end

  modern.each do |key, value| 
  modern_roman_string.sub!(key, value)
  end
  modern_roman_string
end

puts "My nice roman numeral tests" 
puts roman_numeral(2944)