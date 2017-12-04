class BubbleSort

# *** Using an until with condition set inside of an each.

  # def sort(coll)
  #   done = false
  #   until done
  #     done = true
  #     coll.each_with_index do |_, index|
  #       prev = coll[index]
  #       current = coll[index + 1]
  #       if current && current < prev
  #         coll[index], coll[index + 1] = coll[index + 1], coll[index]
  #         done = false
  #       end
  #     end
  #   end
  #   coll
  # end

# *** Using do loops only. No need for conditionals but iterates whether needed or not.

  def sort(coll)
    coll.length.times do
      traverse(coll)
    end
    coll
  end

  def traverse(coll)
    index = 0
    (coll.length - 1).times do
      swap(coll, index)
      index += 1
    end
  end

  def swap(coll, index)
    prev = coll[index]
    current = coll[index + 1]
    if current < prev
      coll[index], coll[index + 1] = coll[index + 1], coll[index]
    end
  end
end
