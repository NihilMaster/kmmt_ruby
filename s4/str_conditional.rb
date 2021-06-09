# include?()
text = "Snow white"
print ".include?(\"S\") = "; p text.include?("S")
print ".include?(\"now\") = "; p text.include?("now")
print ".include?(\" \") = "; p text.include?(" ")
print ".include?(\"black\") = "; p text.include?("black")
print ".include?(\"snow\") = "; p text.include?("snow")
print ".downcase.include?(\"snow\") = "; p text.downcase.include?("snow")
puts

# .emty? && .nil?
v = ""
print "v = "
p v
print "v.empty? = "; p v.empty?
print "v.nil? = "; p v.nil?
puts "x = v[1]"
x = v[1]
print "x.nil? = "; p x.nil?
# x no puede estar vacío porque ni siquiera existe
# print "x.empty? = "; p x.empty?
