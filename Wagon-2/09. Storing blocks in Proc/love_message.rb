def what_am_i(&block)
  block.class
end

puts what_am_i {}


def tell(who, &message_block)
  # A new Proc object is created from the given message_block 
  # Your code goes here...
  puts "#{who}, " + message_block.call + "!"
end

def tell_mum(&message_block)
  #...and here (you should call the tell method of course)
  puts "Mum, " + message_block.call + "!"
end

tell_mum {"I love you"} # => "mum, I love you !"


# Now create the block object by yourself
def tell(who, message_blk)
  # The Proc object is created outside the method and passed as normal parameter
  # Your code goes here...
  puts "#{who}, " + message_blk.call + "!"
end

def tell_mum(message_blk)
  #...and here (you should call the tell method of course)
  puts "Mum, " + message_blk.call + "!"
end

love_block = Proc.new {"I love you"}

tell_mum(love_block) # => "mum, I love you !"