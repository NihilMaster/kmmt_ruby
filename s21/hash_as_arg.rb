class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  #def initialize(name, age, occupation, hobby, birthplace)
  def initialize(name, details = {})
    defaults = {age: 35, occupation: "Candidate", hobby:"PopCorn Vendor", birthplace: "Malvinas"}
    defaults.merge!(details)
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

# senator1 =  Candidate.new("Mr. S", 54, "Stolen", "Banker", "Dubai")
# p senator1.name

info = {hobby: "Stolen", birthplace: "Dubai", age: 53, occupation: "Banker"}
senator2 = Candidate.new("Mr. T", info)
p senator2.occupation
p senator2.age
p senator2.birthplace
puts

senator3 = Candidate.new("Mr. U")
p senator3.name
p senator3.age
