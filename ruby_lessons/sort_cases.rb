def sort_fn(item)
  date_string = item[0]
  date_arr = date_string.split('-')
  Time.new(date_arr[2], date_arr[1], date_arr[0])
end

def sort_cases(data)
  sorted_data = data.sort_by { |item| sort_fn(item) }
  sorted_data.reverse
end

puts sort_cases([
                  ['11-9-2020', 'france', 10_000],
                  ['11-10-2020', 'usa', 35_000],
                  ['13-12-2020', 'india', 55_000],
                  ['12-11-2020', 'france', 13_000],
                  ['12-12-2020', 'usa', 22_000],
                  ['11-12-2020', 'india', 54_000]
                ])
