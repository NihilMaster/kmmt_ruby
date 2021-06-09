def fizzbuzz(n)
  if (n%3==0 && n%5==0)
    print "fizzbuzz "
  elsif n%3==0
    print "fizz "
  elsif n%5==0
    print "buzz "
  else
    print "#{n} "
  end

  if n%10==0
    puts
  end
end

i=1
while i<=100
  fizzbuzz(i)
  i+=1
end
