squares_proc =  Proc.new {|n| n ** 2}
p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5)

squares_lambda = lambda {|n| n ** 2}
p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)
puts

some_proc = Proc.new {|n,a| "Your nam is #{n} and your age is #{a}"}
p some_proc.call("M",24)
p some_proc.call("M")
p some_proc.call()

some_lamda = lambda {|n,a| "Your nam is #{n} and your age is #{a}"}
p some_lamda.call("M",24)
# p some_lamda.call("M")
# p some_lamda.call()
# Lambda requires the requested arguments as opposed to proc
puts

def diet1
  status = Proc.new {return 'You gave in.' }
  status.call # if # this line #=> You completed the diet!
  'You completed the diet!'
end
p diet1
def diet2
  status = lambda {return 'You gave in.' }
  status.call
  'You completed the diet!' # if # this line #=> You gave in.
end
p diet2
# Lambdas return control back to the method
