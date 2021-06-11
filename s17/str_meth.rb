s = "The Ruby Programming Language is amazing"

# .start_with? && .end_with?
puts s.start_with?("The")
puts s.end_with?("ing")

# Customs
# Return true if substring is found at the
# beginning of string; false otherwize.
def custom_start_with?(s,sbs)
  s[0, sbs.length] == sbs
end

# Return true if substring is found at the
# end of string; false otherwize.
def custom_end_with?(s,sbs)
  s[-sbs.length, s.length] == sbs
end

puts custom_start_with?(s, "The ")
puts custom_end_with?(s, "zing")
puts

# .include?
# custom_include?
# Return true if the substring is found
# anywhere within the string. R false otherwize
def custom_include?(s, sbs)
  len = sbs.length
  s.chars.each_with_index do |c,i|
    return true if s[i,len]==sbs
  end
  false
end

p custom_include?(s, "Language")
