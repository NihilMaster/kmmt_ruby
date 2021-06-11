# .sub
puts "wordplay".sub("word","sword")
puts
w = 'aspirin'
p w
w.sub!("in","ing")
p w
puts

# .gsub
puts "an apple".gsub("a","-")
puts
p n = "555 444 3333"
puts n.gsub(" ","")
p nf= "(555)-444 3333"
puts nf.gsub(" ","").gsub("(","").gsub(")","").gsub("-","")
puts
puts nf.gsub(/[-\s\(\)]/,"")
