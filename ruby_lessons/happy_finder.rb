def happy?(number)
  sum1 = 0
  sum2 = 0
  number_string = number.to_s
  first_half = number_string.slice(0, number_string.length / 2)
  second_half = number_string.slice(first_half.length..) 


  first_half.each_char do |c|
    sum1 += c.to_i
  end

  second_half.each_char do |c|
    sum2 += c.to_i
  end
  sum1 == sum2
end

#test
test1 = happy?(1234)
test2 = happy?(2341)
if test1 != false 
  puts "test1 error #{test1}"
end
if test2 != true
 puts "test2 error #{test2}"
end
