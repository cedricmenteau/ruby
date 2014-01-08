def sum(min, max)
  answer = 0
  while min <= max
  	answer += min
  	min += 1
  end
  answer
end

def sum2(min, max)
  answer = 0
  for i in min..max
  	answer += i
  end
  answer
end

def sum3(min, max)
  if min < max 
  	min + sum3(min + 1, max)
  else
  	return max
  end
end

min = 1
max = 100
sum = sum(min, max)

puts sum(min, max)
puts sum2(min, max)
puts sum3(min, max)