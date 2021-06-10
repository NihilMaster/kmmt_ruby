a = [1, 2, 3]
b = [1, 2, 3]
p a.object_id
p b.object_id
p a.object_id == b.object_id

# Copies the object reference "a"
b = a
p a.object_id
p b.object_id
p a.object_id == b.object_id

a.push(4)
p a
p b
puts

# .dup
b = a.dup
a.push(5)
p a
p b
p a.object_id
p b.object_id
p a.object_id == b.object_id
