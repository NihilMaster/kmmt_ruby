# .split
s = 'Hola, esta es una oración. 123'
p s.split
p s.split("a")
aux = s.split(" ")
puts
aux.each {|w| puts w}
puts

# Problem
# Longest word
def longestW(str)
  arr = str.split(" ")
  temp = []
  arr.each {|w| temp.push(w.length)}
  return arr[temp.index(temp.max)]
end
p longestW('I really love tardigrade')
puts

# .each_char
'Hola mundo'.each_char {|n| print "#{n} "}
puts
p 'Hola mundo'.split("")
puts

# .chars
ch = s.chars
p ch
puts

# .join
puts s.split(" ").join
puts s.split(" ").join("-")
puts %w(Hola usuario).join(" ")
puts

# Problem 2
# custom_join
aux = s.split(" ")
dlim ="|"
final=""
aux.each_with_index {|w,i| (i<aux.length-1) ? final.concat(w).concat(dlim) : final.concat(w)}
puts final
puts

# .count
puts "wololo!".count("lo")        # 3o + 2l = 5
puts "Arabia Saudita".count("Aa") # 1A + 4a = 5
puts

# .index && .rindex
p s
print 'Ubicación de la ó : '; p s.index("ó")
print 'Ubicación de la z : '; p s.index("z")
print 'Primer a: '; p s.index("a")
print 'Última a: '; p s.rindex("a")
puts

# .insert()
ss = s.split(" ").join
p ss
ss.insert(5, " "); ss.insert(10, " "); ss.insert(13, " ")
ss.insert(17, " "); ss.insert(26, " ");
p ss
puts

# .squeeze n !
ss = 'Essttttte  ees un accesoo'
p ss
p ss.squeeze
p ss.squeeze("tt")
puts

# .clear
p ss
p ss.clear
puts

# .delete
p s
p s.delete("a")
p s.delete("123")
p s.delete(" es")
