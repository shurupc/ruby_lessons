def type_of_type(value)
    check1 = value.is_a? Array
    check2 = value.is_a? Hash
    check3 = value.is_a? Range
    if check1 || check2 || check3
        :complex
    else
        :simple
    end
end
puts type_of_type(4)

#test
test = type_of_type(1..3)
if test != :complex
    "test error #{test}"
end
