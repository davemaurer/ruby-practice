class Product
  attr_reader :numbers
  def initialize(nums)
    @numbers = nums
  end

  def find_products_excluding_current_element
    @numbers.map.with_index do |_, index|
      other_nums = @numbers.dup
      other_nums.delete_at(index)
      other_nums.reduce(:*)
    end
  end
end
