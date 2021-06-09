# .reverse && .reverse!
s = "Hola"
p s
p s.reverse
p s
p s.reverse!
p s
puts

# .sort && .sort!
n = [4,23,2,-3,4,6,0]
ss = %w(aaa aba aac aca baa)
p n.sort
p ss
ss.sort!
p ss
puts

# .concat
a = [1,2,3]
aa = [4,5,6]
a.concat(aa)
p a
puts

# .min && .max
p n.max
p n.min
p ss.max
p ss.min
puts

# problem
# max n min without .max && .min
def maxx(arr)
  #arr.sort.pop   # Sol 1
  #arr.sort.last  # Sol 2
  arr.sort[-1]    # Sol 3
end
def minn(arr)
  #arr.sort.shift # Sol 1
  #arr.sort.first # Sol 2
  arr.sort[0]     # Sol 3
end
p maxx(n)
p minn(n)
puts

# .index && .find_index
p ss.index("aca")
p ss.find_index("aca")
puts

# .select
aux = n.select {|n| n.even?}
p aux
puts

# .reject   //!.select
aux = n.reject {|n| n.even?}
p aux
puts

# .partition
evens, odds = n.partition {|n| n.even?}
puts "Pares:   #{evens}"
puts "Impares: #{odds}"
