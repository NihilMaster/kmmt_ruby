sometime = Time.new(2016, 11, 14)
tuesday  = Time.new(2016, 11, 15)

# instance methods
# .yday, .mday && wday
p sometime.yday # year day
p tuesday.yday
p sometime.mday # month day
p tuesday.mday
p sometime.wday # week day
p tuesday.wday
puts

# predicate methods
# .[day-name]?
p sometime.monday?
p tuesday.monday?
p tuesday.tuesday?
puts

# .dst? (Daylight savings) //Horario de verano
p sometime.dst?
p tuesday.dst?
