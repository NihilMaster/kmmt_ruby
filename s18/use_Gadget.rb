require_relative "classes/gadget.rb"

smartphone = Gadget.new
tv = Gadget.new
laptop = Gadget.new

puts tv
puts tv.class
puts tv.class.superclass
p tv.class.ancestors
p tv.is_a?(Gadget)
p tv.respond_to?(:length)
p tv.methods.sort
puts
print "Gadget methods that don't have Object: "
p tv.methods - Object.methods
