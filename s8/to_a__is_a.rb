# .to_a
#   String
char_range  = "A".."D"
array_range = char_range.to_a
i=0
p char_range
(array_range.length).times { print "#{array_range[i]} "; i+=1 }
puts; puts

#   Integer
num_range = 440..450
p num_range
p num_range.to_a
puts

# .is_a
p 1.class
p "1".class
p 1.0.class
p true.class
puts
p 1.is_a?(String)
p 1.is_a?(Integer)
p 1.is_a?(Fixnum)
p 1.is_a?(Float)
p %w(a b).is_a?(Array)
puts

# Hierarchy
p 1.is_a?(Fixnum)     # Hereda de Integer
p 1.is_a?(Integer)    # Hereda de Object
p 1.is_a?(Object)     # Hereda de BasicObject
p 1.is_a?(BasicObject)
