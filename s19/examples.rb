# example 1
module LengthConversions
  WEBSITE = "https://google.com"

  def self.meters_to_kilometers(m)
    m / 1000.0
  end

  def self.centimeters_to_meters(c)
    c / 100.0
  end

  def self.kilometers_to_centimeters(k)
    k * 100000.0
  end
end

puts LengthConversions.meters_to_kilometers(400)
puts LengthConversions.centimeters_to_meters(21)
puts LengthConversions.kilometers_to_centimeters(5)
puts

# example 2
module Square
  def self.area(s)
    s * s
  end
end

module Rectangle
  def self.area(l, w)
    l * w
  end
end

module Circle
  PI = 3.14159
  def self.area(r)
  PI * ( r ** 2 )
  end
end

puts Square.area(5)
puts Rectangle.area(10, 5)
puts Circle.area(4)
