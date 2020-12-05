class Foo
  def call_protected
    bar
  end

  protected
  def bar
    puts "protected method"
  end
end

instance1 = Foo.new
instance2 = Foo.new

instance1.call_protected()
instance2.call_protected()