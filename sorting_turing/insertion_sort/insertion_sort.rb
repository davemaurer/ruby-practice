class InsertionSort
  def sort(coll)
    sorted = [coll.shift]
    coll.each do |element|
      i = 0
      insert_element(sorted, element, i)
    end
    sorted
  end

  def insert_element(collection, num, i)
    if num <= collection[i]
      collection.insert(i, num)
    elsif i == collection.length - 1
      collection << num
    else
      insert_element(collection, num, i + 1)
    end
    collection
  end
end
