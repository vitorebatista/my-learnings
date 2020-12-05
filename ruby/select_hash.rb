hash = {0 => "zero", 1 => "um", 2 => "dois"}
selection = hash.select do |key, value| 
  key > 1
end

puts selection