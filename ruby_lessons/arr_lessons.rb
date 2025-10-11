def intersection arr1, arr2
    result_arr = []
    puts "array1: #{arr1} array2: #{arr2} result: #{result_arr}"

    arr1.each do |item|
        if arr2.include? item
            result_arr << item
        end
        puts "item: #{item} result: #{result_arr}"
    end

    puts "result: #{result_arr}"
    result_arr
end

#test
test1 = intersection [1, 2, 3], [3, 1]
if test1 != [1, 3]
    puts "test1 error #{test1}"
end

test2 = intersection [5, 4, 3], [6, 7, 8]
if test2 != []
    puts "test2 error #{test2}"
end