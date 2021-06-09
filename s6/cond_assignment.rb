# Normal enviroment
y = nil; p y
y = 5; p y
y = 10; p y
puts

# || conditional
# Operator || conditions
# that the variable is
# previously nil before
# assignment.
y = nil; p y
y ||= 5; p y
y ||= 10; p y
# Here is still 5 since
# 10 is not a nil
puts

# example
text = "Hola"
index = 100
letter = text[index]
p letter   # nil
letter ||= "Not found"
p letter
