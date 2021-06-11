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
  attr_reader :rank
  def initialize(name, age, rank)
    super(name, age) # Ya están inicializadas en la superclase
    @rank =  rank
  end
  def yell
    'Who is the b00$? I\'m the boss!'
  end
  def introduce
    result = super
    result +=  " I'm also a manager #{@name}!"
  end
end

m = Employee.new("M", 24)
p m.introduce
puts

n = Manager.new("N", 16, "Senior")
p n.introduce
p n.rank
p n.name
p n.age
