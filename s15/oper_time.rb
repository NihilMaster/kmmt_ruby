# Arithmetically
start_of_year = Time.new(2021, 1, 1)
p start_of_year
p start_of_year + 60 # +One minute
p start_of_year -180 # -Three minute
p start_of_year + (60 * 60 * 24) # +One day
puts

# Problem
# Find day of year by number
def find_day_of_year_by_number(n)
  current_date = Time.new(2021, 1, 1)
  one_day = 60 * 60 * 24
  until current_date.yday == n
    current_date += one_day
  end
  current_date
end
print 'Half the year is dated: '
p find_day_of_year_by_number(183)
puts

# Compare
birthday = Time.new(2021, 4, 15)
summer = Time.new(2021, 6, 21)
winter = Time.new(2021, 12, 21)
new_year = Time.new(2021, 12, 31)

puts birthday < summer
puts new_year == winter
puts new_year > Time.new(2022, 1, 1)
puts

#  .between?
puts birthday.between?(summer, winter)
puts

# Convert to another obj
p start_of_year
p start_of_year.to_s
p start_of_year.ctime
p start_of_year.ctime.class
p start_of_year.to_a
puts

# Format
#   .strftime
#
# %B - The full month name (``January'')
# %b - The abbreviated month name (``Jan'')
# %d - Day of the month, zero-padded (01..31)
# %j - Day of the year (001..366)
# %m - Month of the year, zero-padded (01..12)
# %w - Day of the week (Sunday is 0, 0..6)
# %x - Date (%m/%d/%y)
# %y - year % 100 (00..99)
# %Y - Year with century (can be negative, 4 digits at least)
#

today = Time.now
p today.strftime("%d %B of %Y")
p today.strftime("%w - %d - %j")
