class Prod
  @@prod_count = 0

  def self.counter
    @@prod_count
  end

  def initialize
    @@prod_count += 1
  end
end

class Widget < Prod
  @@widget_count = 0

  def self.counter
    @@widget_count
  end

  def initialize
    super
    @@widget_count += 1
  end
end

class Thing < Prod
  @@thing_count = 0

  def self.counter
    @@thing_count
  end

  def initialize
    super
    @@thing_count += 1
  end
end

a = Widget.new
b = Widget.new
c = Thing.new

print 'Widget_count: '
puts Widget.counter
print 'Thing_count: '
puts Thing.counter
print 'Prod_count: '
puts Prod.counter
