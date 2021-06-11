voicemail = 'I can be reached at 555-123-4567 or regexman.mail'

p voicemail.scan(/re/)
p voicemail.scan(/[re]/)
p voicemail.scan(/[reIi5]/)
puts

p voicemail.scan(/\d/)  # numbers
p voicemail.scan(/\d+/) # complete numbers
puts

voicemail.scan(/\d+/) { |d| puts d.length }
puts

# anchors
poem = '99 bottles of beer of the wall, 99 bottles of beer'
test = 'Prueba'

p poem.scan(/\d+/)
p poem.scan(/\A\d+/) # \A Start of string
p poem.scan(/eer\z/) # \z End of string
puts
p test.scan(/\APru/)
p test.scan(/eba\z/)
puts

# exclude_char
sales = 'I bought 9 apples, 25 bananas, and 4 oranges at the store.'

p sales.scan(/[^aeiou]/)
p sales.scan(/[^aeiouAEIOU,\s\d\.]/) # Exclude vocals, blanckspaces, numbers and dots
