# brackets for extract characters
sbracket = "Esta es una oración."
pos = 17
p sbracket
puts "Hay una #{sbracket[pos]} en la posición #{pos}";
print "[17] = "; p sbracket[17]
print "[-3] = "; p sbracket[-3]
print "[100] = "; p sbracket[100]
print ".slice(17) = "; p sbracket.slice(17)
print ".slice(-3) = "; p sbracket.slice(17)
puts
print "[12, 17] = "; p sbracket[12, 17]
print "[0, .length] = "; p sbracket[0, sbracket.length] # Works the same with . slice()
print "[-8, 7] = "; p sbracket[-8, 7]
puts
# range: .. (hasta, incluido), ... (hasta antes de)
print "[12..19] = "; p sbracket[12..19]
print "[12...19] = "; p sbracket[12...19]
puts
# character substitution
schange = "Rata"
p schange
puts "[0] = \"M\" "
schange[0] = "M"
p schange
puts "[0, 3] = \"Pen\" "
schange[0, 3] = "Pen"
p schange
puts "[-4..2] = \"Rat\" "
schange[-4..2] = "Rat"
p schange
puts "[1] = \"adioterapeu\" "
schange[1] = "adioterapeu" # Sustituye la "a" por "adioterapeu"
p schange
puts
