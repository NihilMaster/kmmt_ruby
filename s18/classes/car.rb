class Car

  # getters n setters
  attr_accessor :year, :mark
  attr_writer   :active
  attr_reader   :model, :version


  def initialize
    @model = "Model #{rand(1..99)}"
    @mark = "Unknow"
    @year = "2000"
    @active = true
    @version = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
  end

  def info
    "Car #{@mark} is a #{@model} model."
  end

  def live
    if @active
      "This car is active"
    else
      "This car isn't active"
    end
  end

  def old(t)
    "This car is #{t-@year} years old "
  end

end

a = Car.new
p a.model
a.year=2020
p a.year
p a.live
a.active = false
p a.live
puts

# param to meth class Car
t = Time.now.strftime("%Y").to_i
p a.old(t)
