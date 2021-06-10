p :name
p :name.class
#puts :name.methods
puts

person = {:name => "M",
          :age => 24,
          :best => true,
          :lenguages => ["Java", "Javascript", "PHP", "Ruby"]}

p person[:name]
p person[:best]
puts
person = {name: "N",
          age: 18,
          best: false,
          lenguages: ["C++", "Python", "Perl", "Go"]}

p person[:name]
p person[:lenguages]
puts

# Symbol_String
p :age.to_s.class
p "age".class
p :age.class
p "age".to_sym.class
p "age".to_sym
