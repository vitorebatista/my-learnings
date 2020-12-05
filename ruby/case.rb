puts "Digite o mês em que você nasceu"

month = gets.chomp.to_i

case month
when 1..3
  puts "você nasceu no início do ano"
when 9..12
  puts "Você nasceu no fim do ano"
when 4..6
  puts "você nasceu no meio do ano"
when 7..8
  puts "você nasceu na segunda metade do ano"    
else
  puts "mês inválido"
end