def students_summary(grades)
  aver = nil
  result = []
  grades.each do |names, marks|
    aver = marks.sum.to_f / marks.length.to_f
    result << { name: names, average: aver }
  end
  result
end

grades = {
  'Анна' => [5, 4, 5, 5],
  'Борис' => [3, 4, 3, 4],
  'Вера' => [5, 5, 5, 4]
}

puts students_summary grades

# test
test1 = students_summary({
                           'Иван' => [5, 4, 5, 4],
                           'Мария' => [3, 3, 4],
                           'Петр' => [5, 5, 5, 5]
                         })

expected = [
  { name: 'Иван', average: 4.5 },
  { name: 'Мария', average: 3.3333333333333335 },
  { name: 'Петр', average: 5.0 }
]

puts "test1 failed: #{test1}" if test1 != expected
