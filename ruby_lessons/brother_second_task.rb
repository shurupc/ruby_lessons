def complex_search(arr_for_check, check1, check2)
  first_index = nil
  second_index = nil

  arr_for_check.each_with_index do |value, index|
    first_index = index if value == check1

    second_index = index if !first_index.nil? && value == check2

    break if !first_index.nil? && !second_index.nil? && first_index < second_index
  end

  !first_index.nil? and !second_index.nil? and first_index < second_index
end

# tests
test1 = complex_search([1, 2, 3], 3, 1)
puts "test1 error #{test1}" if test1 != false

test2 = complex_search([1, 2, 3], 1, 3)
puts "test2 error #{test2}" if test2 != true

test3 = complex_search([1, 3, 0, 3, 1], 1, 3)
puts "test3 error #{test3}" if test3 != true
