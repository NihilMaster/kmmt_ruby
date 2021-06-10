a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map {|n| n ** 3 }
b_cubes = b.map {|n| n ** 3 }
c_cubes = c.map {|n| n ** 3 }

p a_cubes
p b_cubes
p c_cubes
puts

# Proc
cubes = Proc.new {|n| n ** 3}
squares = Proc.new {|n| n ** 2}

a_cubes = a.map(&cubes)
b_cubes = b.map(&squares)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes
puts

a_cubes, b_cubes, c_cubes = [a, b, c].map { |a| a.map(&cubes)}

p a_cubes
p b_cubes
p c_cubes
puts

# Example 1
curriencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |c| c * 0.95}
to_rupees = Proc.new { |c| c * 68.13}
to_pesos = Proc.new { |c| c * 20.70}

p curriencies.map(&to_euros)
p curriencies.map(&to_rupees)
p curriencies.map(&to_pesos)
puts

# Example 2
ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new {|a| a>55}
five_years = Proc.new {|a| a + 5}
p ages.select(&is_old)
p ages.reject(&is_old)
p ages.map(&five_years)
