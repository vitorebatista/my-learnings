fruits = { laranja: "Laranja", limao: "Limão" }

fruits[:melao] = "Melão"

fruits.each do |key, value|
  puts "#{key}: #{value}"
end

