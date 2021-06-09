# case_when   //switch
def calc_school_group(grad)
  case grad
  when 1..5
    "Primaria"
  when 6..9 then "Secundaria"
  when 10..11 then "Bachillerato"
  else "Preescolar"
  end
end

p calc_school_group(2)
p calc_school_group(7)
p calc_school_group(10)
p calc_school_group(0)
puts

# truthiness n !
puts 1
puts 1 ? true : false
puts !1 ? true : false
puts !1
s = ""
puts !s
# ~ ~ true/nil
puts !!true
puts !!nil
puts

# unless ( if ![] )   //a menos de que
pass = "qwerty"
puts pass

if !pass.include?("ñ")
  puts "Is a valid password"
end

unless pass.include?("ñ")
  puts "Is a valid password (unless verification)"
end
