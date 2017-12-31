class Product
  attr_reader :numbers
  def initialize(nums)
    fail ArgumentError, "At least 2 numbers are needed" if nums.count < 2
    @numbers = nums
  end

  def find_products_excluding_current_element
    @numbers.map.with_index do |_, index|
      other_nums = @numbers.dup
      other_nums.delete_at(index)
      other_nums.reduce(:*)
    end
  end

  def another_way_to_get_products
    final_products = []
    accumulated_product = 1
    index = 0
    while index < @numbers.length
      final_products[index] = accumulated_product
      accumulated_product *= @numbers[index]
      index += 1
    end
    accumulated_product = 1
    index = @numbers.length - 1
    while index >= 0
      final_products[index] *= accumulated_product
      accumulated_product *= @numbers[index]
      index -= 1
    end
    final_products
  end
end
