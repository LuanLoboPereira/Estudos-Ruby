class Foo 
  def call_protected(instance) 
    instance.bar 
  end 

  protected 

  def bar 
    puts "protected method" 
  end 
end 

intance_1 = Foo.new 

intance_2 = Foo.new 

intance_1.call_protected(intance_1) 

intance_2.call_protected(intance_2)