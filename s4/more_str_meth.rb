# More methods to concatenate.
a = "A"; b = "B"; c = ""

# Usual
p a+b

# Arithmetically
c +=(a+b); p c;

# Con .concat(), << y .prepend() se asigna
# en la variable a la concatenación.

# .concat()
c = a.concat(b); p c
a = "A"

# Shovel operator (<<)
p a << b
a = "A"

# prepend()
p a.prepend(b)
puts

# .size
p a
print "length: "; p a.length
print "size:   "; p a.size
puts
