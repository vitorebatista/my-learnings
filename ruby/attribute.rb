class Dog
  attr_accessor :name, :age
end

dog = Dog.new
dog.name = "Sol"
dog.age = 10
puts "#{dog.name} tem #{dog.age} anos"