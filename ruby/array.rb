fruits = []

fruits.push("maça","melão","laranja")
fruits.insert(1,"limão")
fruits.insert(0,"tomate")

puts "\nTotal "
puts "Toda a lista (#{fruits.count} unidades):"
puts fruits
puts "\nPrimeiro: #{fruits.first}"
puts "\nÚltimo: #{fruits.last}"
puts "\nPenúltimo #{fruits[-2]}"

fruits.delete_at(3) # deleta o melão

puts fruits.include?('melão') ? "tem o item melão" : "não tem melão"

fruits.pop # deleta o primeiro
fruits.shift # deleta o último
puts "Toda a lista (#{fruits.count} unidades):"
puts fruits