def stupid_coaching 
  # your code goes here
  print "Anything to declare?"
  answer = gets.chomp

  until answer.include? "I'm going to work"
  	puts "Silly question, get dressed and go to work!" if answer == answer
  else puts "I don't care son, get dressed and go to work !"
  end
  puts "Good! Happy new year!"
end

# Calling the method
stupid_coaching