hash_bonanza = {:key_1 => {:key_2 => {:key_3_a => {:key_4 => "found me!"}, :key_3_b => "not quite"}}}

hash = {:key_1 => {:key_2 => {:key_3_b => "not quite", :key_3_a => {:key_4 => "found me!"}}}}

other_hash = {:key_1 => {:key_2 => {:key_3_a => {:key_4 => "found me!", :key_3_b => {:last_key => "not quite"}}}}}

def find_depth(hash)
  depth = 1
  current = hash
  while current.values.any? { |val| val.is_a?(Hash) }
    depth += 1
    new = current.keys.map do |key|
      key if current[key].is_a?(Hash)
    end.compact
    if !new.empty?
      current = current[new.first]
    else
      return depth
    end
  end
  depth
end

puts find_depth(hash_bonanza)
puts find_depth(other_hash)
puts find_depth(hash)
