fruits = Hash.new # poderia ser {}

fruits = { laranja: "Laranja", limao: "Limão" }

fruits[:melao] = "Melão"

puts fruits

fruits.delete(:melao)
fruits.add(maca: "Maçã")

puts fruits