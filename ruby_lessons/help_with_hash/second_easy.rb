def expensive_products(products)
  products.filter { |_key, value| value > 1000 }
end

products = {
  'ноутбук' => 45_000,
  'мышка' => 500,
  'клавиатура' => 1500,
  'монитор' => 15_000,
  'флешка' => 300
}
puts expensive_products products

# Тест 1: Базовый случай
result1 = expensive_products({
                               'ноутбук' => 45_000,
                               'мышка' => 500,
                               'клавиатура' => 1500,
                               'монитор' => 15_000,
                               'флешка' => 300
                             })
example = { 'ноутбук' => 45_000, 'клавиатура' => 1500, 'монитор' => 15_000 }
puts "Тест 1 failed: #{result1}" if result1 != example
