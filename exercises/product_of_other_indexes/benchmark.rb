require_relative 'product'
require 'benchmark/ips'

product = Product.new([78, 3, 5, 1, 4, 9, 22])

Benchmark.ips do |t|
  t.config(time: 3, warmup: 2)

  t.report("using map: ") { product.find_products_excluding_current_element }
  t.report("using while loops: ") { product.another_way_to_get_products }
end
