# Реализуй функцию total_items, которая принимает хеш с товарами и их количеством, и возвращает общее количество всех товаров.

def total_items(inventory)
  total = 0
  inventory.each do |_item, count|
    total += count
  end
  total
end

inventory = {
  'яблоки' => 50,
  'бананы' => 30,
  'апельсины' => 45
}

puts total_items inventory

test_hash = {
  'яблоки' => 20,
  'бананы' => 20,
  'апельсины' => 20
}

test1 = total_items(test_hash)
puts "test1 error #{test1}" if test1 != 60
