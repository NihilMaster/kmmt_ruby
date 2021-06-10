# Return a hash where the keys
# will represent the words in
# the values will represent how
# many times that key occurs
s = 'Once upon a time in a land far far far away'

def word_count(str)
  arr = str.split(" ")
  aux = arr.sort[0]
  h = Hash.new(0)
  arr.sort.each do |w|
    if aux==w
      h[w] = h[w]+1
    else
      h[w] = 1
    end
    aux = w
  end
  h
end

p word_count(s)
