# p [1, 2, 3, "Hello", false, 4].sum
# Error, Cannot add a String into Integers
class Array
  def sum
    total = 0
    self.each {|e| total += e if e.is_a?(Numeric)}
    total
  end
end
p [1, 2, 3, "Hello", false, 4].sum
puts

# puts "abs".alphabet_sum
# Error, undefined method 'alphabet_sum'
class String
  def alphabet_sum
    alpha = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |c|
      if alpha.include?(c)
        numeric_value = alpha.index(c) + 1
        sum += numeric_value
      end
    end
    sum
  end
end
puts "abc".alphabet_sum
puts "zzz".alphabet_sum
puts "Hola mundo".alphabet_sum
puts "Hola mundo".upcase.alphabet_sum
puts


scores = {a:100, b:100, c:83, d:50, e:13,
          f:26, g:100, h:13, i:50, j:180}
# p scores.identify_duplicate_values #=> Error, undefined method
class Hash
  def identify_duplicate_values
    values = []
    dupes = []

    self.each_value do |v|
      (values.include?(v)) ? dupes << v : values << v
    end
    dupes.uniq
  end
end
p scores.identify_duplicate_values
puts

class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

  def millenium
    self * 60 * 60 * 24 * 365.2425 * 1000
  end
end
p t = Time.now
p t + 60
p t + 1.minutes
p t + 5.days
p t + 2.millenium
puts


class Book
  def initialize(tittle, author, pages)
    @tittle = tittle
    @author = author
    @pages  = pages
  end
end

libro = Book.new("Biblia", "Many people", 1200)
p libro

class Book
  def read
    1.step(@pages, 10) {|p| puts "Reading page #{p}..."}
    "Done! #{@tittle} was a great book!"
  end
end

libro2 = Book.new("Libro X", "Unknow", 30)
p libro2
p libro2.read
# p libro.read  #tl tr xd
