# your code goes here, introduce yourself !
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your middle name?"
middle_name = gets.chomp
middle_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

puts "Hello, #{first_name} #{middle_name} #{last_name}"
puts "Hello" + first_name + middle_name + last_name