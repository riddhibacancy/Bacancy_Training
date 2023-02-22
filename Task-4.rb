elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}

l = elements.length

hash = {}
for i in 0...l
  hash[elements[i]] = hash_to_be_sorted[elements[i]]
end

puts hash
