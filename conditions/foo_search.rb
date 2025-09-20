def foo_search(word)
    if word.empty?
        return "empty string"
    end 
    word.include? "foo"
end
puts foo_search("bar")

#tests
test1 = foo_search("foobar")
test2 = foo_search("bar")
test3 = foo_search("")
if test1 != true
    puts "test1 error #{test1}"
elsif test2 != false
    puts "test2 error #{test2}"
elsif test3 != "empty string"
    puts "test3 error #{test3}"
end