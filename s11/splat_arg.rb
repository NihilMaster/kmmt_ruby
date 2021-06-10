def sum(*num)
  aux = 0
  num.each {|n| aux += n}
  aux
end

p sum(1,2,3,4,5,6,7,8,9)


=begin
def sum(*num)
  num += 1
end

x=0
sum(x)
p x     #=> 1  //Ignore warning
=end
