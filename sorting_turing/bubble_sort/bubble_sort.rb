class BubbleSort
  def sort(coll)
    done = false
    until done
      done = true
      coll.each_with_index do |_, index|
        prev = coll[index]
        current = coll[index + 1]
        if current && current < prev
          coll[index], coll[index + 1] = coll[index + 1], coll[index]
          done = false
        end
      end
    end
    coll
  end
end
