s = "This is my essay. I deserve an A. I rank it a 5 out of 5."

p s.scan(/./)
p s.scan(/\./)
p s.scan(/d/)
p s.scan(/\d/)
p s.scan(/\D/) # Without numbers
p s.scan(/\s/) # Blankspaces
print "Number of blankspaces: "
puts s.scan(/\s+/).length
