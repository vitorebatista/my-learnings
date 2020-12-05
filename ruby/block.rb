def foo
  if block_given?
    yield
  else
    puts "sem parâmetros"
  end
end

def foo2(name, &block)
  @name = name
  block.call
end

5.times {|value| puts "block #{value}"}

sum = 0
values = [1,2,3,4,5]
values.each {|value| sum += value}
puts sum

foo { puts "executou foo"}
foo

foo2('vitor') { puts "#{@name}"}