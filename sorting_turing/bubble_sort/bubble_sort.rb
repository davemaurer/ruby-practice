class BubbleSort
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

  def sort(coll)
    coll.length.times do
      index   = 0
      prev    = coll[index]
      current = coll[index + 1]
      (coll.length - 1).times do
        if current && current < prev
          coll[index], coll[index + 1] = coll[index + 1], coll[index]
        end
        index += 1
      end
    end
  end
end
