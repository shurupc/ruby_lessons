def sort_cases(data, country)
  sorted_first = data.sort_by { |item| item[2] }
  filtr = sorted_first.filter { |item| item[3] >= item[2] / 2 }
  if !country.nil?
    filtr.filter { |item| item[1] == country }
  else
    filtr
  end
end

puts sort_cases([
                  ['11-9-2020', 'france', 10_000, 5_000],
                  ['11-10-2020', 'usa', 35_000, 30_000],
                  ['13-12-2020', 'india', 55_000, 10_000],
                  ['12-11-2020', 'france', 13_000, 12_000],
                  ['12-12-2020', 'usa', 22_000, 1_000],
                  ['11-12-2020', 'india', 54_000, 25_000]
                ], 'france')
# tests
test1 = sort_cases([
                     ['01-01-2021', 'germany', 15_000, 7_000],
                     ['02-01-2021', 'spain', 25_000, 20_000],
                     ['03-01-2021', 'italy', 30_000, 10_000]
                   ], nil)
puts "test1 error #{test1}" if test1 != [['02-01-2021', 'spain', 25_000, 20_000]]

test2 = sort_cases([
                     ['01-01-2021', 'germany', 15_000, 7_000],
                     ['02-01-2021', 'spain', 25_000, 20_000],
                     ['03-01-2021', 'italy', 30_000, 10_000],
                     ['04-01-2021', 'italy', 28_000, 14_000]
                   ], 'italy')
puts "test2 error #{test2}" if test2 != [['04-01-2021', 'italy', 28_000, 14_000]]
# сортировка в возрастающем порядке, по заболеваемости
# отфильтровать страны по где смертность >= половине заболеваемости
# вторым аргументом необязательная страна которую надо отфильтровать
