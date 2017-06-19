class InsertionSort
  def sort(coll)
    sorted = [coll.shift]
    coll.each do |element|
      i = 0
      insert_element(sorted, element, i)
    end
    sorted
  end

  def insert_element(collection, element, i)
    if element <= collection[i]
      collection.insert(i, element)
    elsif i == collection.length - 1
      collection << element
    else
      insert_element(collection, element, i + 1)
    end
    collection
  end
end
