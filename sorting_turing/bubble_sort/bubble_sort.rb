class BubbleSort
  def sort(coll)
    coll.each_with_index do |_, index|
      prev = coll[index]
      current = coll[index + 1]
      if current && current < prev
        coll[index], coll[index + 1] = coll[index + 1], coll[index]
      end
    end
  end
end
