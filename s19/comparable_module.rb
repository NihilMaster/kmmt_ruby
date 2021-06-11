class OlympicMedal

  include Comparable

  MEDAL_VALUES = {"Gold" => 3, "Silver"=> 2, "Bronze"=> 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    MEDAL_VALUES[self.type] <=> MEDAL_VALUES[other.type]
  end
end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)

puts bronze < silver
puts bronze > silver
puts bronze == silver
puts gold >= silver
puts gold == gold
puts silver.between?(bronze, gold)
