def talk(name, last)
  puts "Olá #{name} #{last}"
end

talk('Vitor', 'Batista')

def signal(value = 'verde')
  puts "O sinal está #{value}"
end

signal('vermelho')
signal