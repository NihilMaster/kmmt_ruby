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

class Manager < Employee
  # Override introduce meth
  def introduce
    "Hi, my name is #{name} and I'm the boss!"
  end

  def yell
    'Who is the b00$? I\'m the boss!'
  end
end


m = Employee.new("M", 24)
p m.introduce
puts

n = Manager.new("N", 16)
p n.introduce # Overridden method
p n.yell
puts
