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
  # Exclusive for Worker n Manager
  def yell
    'Who is the b00$? I\'m the boss!'
  end
end

class Worker < Employee
  # Exclusive for Worker
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  # Exclusive for Worker n Manager
  def yell
    'I\'m working! I\'m working'
  end
end

m = Employee.new("M", 24)
p m.introduce
puts

n = Manager.new("N", 16)
p n.introduce
p n.yell  # Exclusive for Worker n Manager
puts

o = Worker.new("O", 39)
p o.introduce
p o.yell  # Exclusive for Worker n Manager
p o.clock_in("6:00 AM") # Exclusive for Worker
puts
