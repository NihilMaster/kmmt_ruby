# if
word = "Udemy"
if word.include?("my")
  puts "Yes, #{word} includes \"my\""
end

# truthiness n falsiness
if !nil
  puts "nil is falsey"
end

if (4 && [] && {} && 4.6)
  puts "All this statements are truthy"
end

# Strings T/F
s = ""
# if "" && "Hola"
if s
  puts "  Strings are truthy,
  but it send out an alert
  if you put them directly."
end
puts

# elsif
if nil
  puts "This will never print"
elsif !nil
  puts "!nil is a denial of null"
end
puts

#else
g = "C"
if g=="A"
  puts "Yes, is A"
elsif g=="B"
  puts "Yes, is B"
else
  puts "Yes, is C"
end
puts

# || n &&
def passaport(id, p, a, n)
  permission=p; age=a; name=n
  if permission && age>21
    if id=="4" || (name=="P" && age==46) # Nested && Parentheses and Precedence
      puts "#{id} Tiene problemas con la justicia"
    else
      puts "#{id} Aprobado"
    end
  elsif permission || age>21
    puts "#{id} No cumple todos los requisitos"
  else
    puts "#{id} No cumple ningún requisito"
  end
end

passaport(1, true, 24, "M")
passaport(2, true, 15, "N")
passaport(3, false, 17, "O")
passaport(4, true, 46, "P")
