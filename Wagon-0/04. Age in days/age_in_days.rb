def age_in_days(day, month, year)
  # your code goes here !
  t1 = Time.now.to_i
  t2 = Time.new(year, month, day).to_i
  t3 = (t1 - t2) / (3600.*24)
end


# Testing your code
puts age_in_days(17, 11, 1987)