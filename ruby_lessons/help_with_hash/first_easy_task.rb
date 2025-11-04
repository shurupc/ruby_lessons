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
