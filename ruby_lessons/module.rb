def invert_case(start_string)
   empty_string = ""
   start_string.each_char do |c|
      if c == c.upcase
         new_c = c.downcase
      else
         new_c = c.upcase
      end
      empty_string += new_c
   end
   empty_string
end
puts invert_case("aBc")

#test
test = invert_case("VoVa")
if test != "vOvA"
   puts "test1 error #{test}"
end