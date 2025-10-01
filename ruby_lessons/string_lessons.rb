def reverse(string)
    string2 = ""
    string.each_char do |c|
        string2 = c + string2
    end
    string2
end
puts reverse("арбуз")

#tests
test = reverse("word")
if test != "drow"
    puts "test error #{test}"
end