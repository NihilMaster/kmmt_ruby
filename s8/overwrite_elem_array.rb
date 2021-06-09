names = %w(M N O P Q)
# Override existing objects
p names
names[2] = "A"
p names
puts

# Insert
p names[5]
names[5] = "R"
p names[5]
p names
puts

# Insert into an index greater than the length
names[8] = "U"
p names
puts

# Insert several objects at once
names[6, 2] = %w(S T)
p names
puts

# Insert by range
names[6..8] = %w(STU STU STU)
p names
