def stupid_coaching 
  # your code goes here
  print "Anything to declare?"
  answer = gets.chomp
  until answer == "I'm going to work"
  	if answer.end_with?("?")
      puts "Silly question, get dressed and go to work!" 
    else puts "I don't care son, get dressed and go to work !"
    puts "What else?"
    answer = gets.chomp
  end
  puts "Good! Happy new year!"
end

# Calling the method
stupid_coaching