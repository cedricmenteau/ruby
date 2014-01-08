def wagon_sort
	print "Student Name?"
	name = gets.chomp
	list = [] # list=Array.new
	while true
		break if name == ""
		puts "Type another strudent (or press enter to finish)"
		list << name
		name = gets.chomp
	end
	puts list.sort_by { |classement| classement.downcase }
end

wagon_sort
# your code to interact with the user..

# Custom sort_by by Boris !

def sort_by(array)
        fantom = Hash.new
        order = []
        array.each do |x|
                fantom[yield(x)] = x
                order << yield(x)
        end

        order.sort!
        order.each do |i| 
                puts fantom[i]
        end
end