def reverse_number(n)
   n = n.to_s
   n = n.reverse
   n = n.to_i
end
puts reverse_number(-100)

#tests
test = reverse_number(546)
if test != 645
    "test error #{test}"
end
