first = lambda { puts "Olá" }

first.call

second = -> (names){names.each {|name| puts name}}

names = ['Vitor', 'João', 'Maria']

second.call(names)

