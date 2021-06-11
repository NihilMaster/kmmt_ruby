class Gadget
  # Class content
  def initialize
    @username = "User #{rand(1..99)}"
    @pass = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
    @version="0.0.0"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  # overwrite method to_s
  def to_s
    print 'Overwritten to_s method: '
    puts info
    # self referentation
    "Objec of class #{self.class}, and ID: #{self.object_id}"
  end

  def user
    @username
  end

  def v
    "Version: #{@version}"
  end

  def set_v(v)
    @version = v
  end
end

tv = Gadget.new
p tv.inspect
p tv
p tv.instance_variables

dvd = Gadget.new
p tv.info
p dvd.info
puts

# Overwritten method
p tv.to_s
puts

# getter user
p tv.user
p dvd.user
p tv.v
p dvd.v
puts

# setter age
tv.set_v("2.0.0")
dvd.set_v("4.2.1")
p tv.v
p dvd.v


# @
