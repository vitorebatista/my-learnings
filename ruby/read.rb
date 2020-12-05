puts "--Lista de Compras--"

file = File.open('shopping.txt')
p file
file.each do |line|
  puts line
end