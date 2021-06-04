#ODD && EVEN
n=10

#Exclusive method of Integer
print "10 odd  = "; p n.odd?
n = n.next
print "11 odd  = "; p n.odd?
n = n.next
print "12 even = "; p n.even?
n = n.next
print "13 even = "; p n.even?
puts

#== && !=
print "1.  "; p 100 == 100        #1
print "2.  "; p 10 == n           #2
print "3.  "; p "1" == 1          #3
print "4.  "; p "1" == "1"        #4
print "5.  "; p 100 == 10         #5
print "6.  "; p 10 == 10.0        #6
print "7.  "; p n != 100          #7
print "8.  "; p 100 != 10*100     #8
print "9.  "; p "A" != "a"        #9
print "10. "; p "A" != "a".upcase #10
print "11. "; p "a " != "a"       #11
puts

#<, <=, >, >=
print "4>6 "; p 4>6
print "4<6 "; p 4<6
print "4>=6 "; p 4>=6
print "4<=6 "; p 4<=6
print "4<=4 "; p 4<=4

p 4 < 4.0

p "a" <= "a"
p "a" < "z"
p "a" < "aa"
p "b" < "aa"
p "b" < "baa"
