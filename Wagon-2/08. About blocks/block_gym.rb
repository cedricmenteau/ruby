# Recoding inject iterator
	
def inject(array, initial_value)
  # your somme = 0
  result = initial_value
  array.each do |val|
  	result = yield(result, val)
  end
  result
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true


def times(n)
  array = (1..n)
  result = 0
  array.each do |val|
    yield(val)
  end
  result
end

times(5) { |i| puts i }
# 1
# 2
# 3
# 4
# 5

def timer_for
  go = Time.now
  yield
  puts Time.now - go
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds
