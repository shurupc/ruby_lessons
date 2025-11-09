def apply_discount(prices)
  k = 20.0
  result = {}
  prices.each do |key, value|
    discount = value / 100.0 * k
    result[key] = value - discount
  end
  result
end

prices = {
  'кофе' => 200,
  'чай' => 150,
  'сок' => 100
}

puts apply_discount prices

test1 = apply_discount({
                         'молоко' => 100,
                         'хлеб' => 50,
                         'масло' => 250
                       })
expected = { 'молоко' => 80, 'хлеб' => 40, 'масло' => 200 }
puts "test1 failed: #{test1}" if test1 != expected
