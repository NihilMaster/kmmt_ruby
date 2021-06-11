class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end
  def drive
    "Room! Rooom!"
  end
  def stop
    'IIIIIIH '
  end
end

class FireTruck < Car
  attr_reader :sirens
  # With parentheses n args
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end
  # With parentheses but no args
  def stop(s)
    super() + "From #{s} to 0 km/h"
  end
  # Without parentheses
  def drive
    super + " Beep! Beep!"
  end
end

ft = FireTruck.new("Ford", 4)
p ft.drive
p ft.stop(180)
p ft.maker
p ft.sirens
