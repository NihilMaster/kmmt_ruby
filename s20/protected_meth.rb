# car.rb
class Car
  def initialize(age, km)
    base_v = 2000
    age_deduct = age * 1000
    km_deduct = (km / 10.to_f)
    @value = base_v - age_deduct - km_deduct
  end

  def compare_car_with(car)
    self.value  > car.value ? "Your car is better!" : "Your car isn't better."
  end

  protected
  def value
    @value
  end
end

civic = Car.new(3,30000)
fiat  = Car.new(1,20000)
p civic.compare_car_with(fiat)
p fiat.compare_car_with(civic)
# p fiat.value #=> Error, protected method
