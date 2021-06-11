class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

m = Employee.new("M", 24)
p m.introduce

class Manager < Employee

end

class Worker < Employee
end

n = Manager.new("N", 16)
p n.introduce

o = Worker.new("O", 39)
p o.introduce
puts

p n.class
p n.class.ancestors
p o.class
p o.class.ancestors
puts

puts Manager.superclass
puts Worker.superclass
puts Manager < Employee
puts Employee < Employee
puts Employee < Object
puts Manager < Object
puts

# Predicate meth
# is_a?
puts m.is_a?(Employee)
puts m.is_a?(Object)
puts m.is_a?(Kernel)
puts m.is_a?(BasicObject)
puts

# is_instance_of?
puts m.instance_of?(Employee)
puts m.instance_of?(Object)
puts m.instance_of?(Kernel)
puts m.instance_of?(BasicObject)
