# .superclass
p 0.class
p Integer.superclass
p Integer.superclass.superclass
p Integer.superclass.superclass.superclass
p Integer.superclass.superclass.superclass.superclass
puts

# .ancestors
p Integer.ancestors
p Float.ancestors
p Range.ancestors
p String.ancestors
p Array.ancestors
p Hash.ancestors
p Symbol.ancestors
p Time.ancestors
p TrueClass.ancestors
p Proc.ancestors
puts

# .methods
# puts Range.methods.sort
puts 'Functions of Integer but not of Float:'
p 0.methods.sort - 0.0.methods.sort
puts 'Functions of Float but not of Integer:'
p 0.0.methods.sort - 0.methods.sort
puts
