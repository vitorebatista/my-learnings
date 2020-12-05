class Foo
  def self.bar
    puts self
  end
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar
Foo.bar