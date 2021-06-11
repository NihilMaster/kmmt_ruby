class Gadget

  attr_reader :production_number
  attr_writer :pass
  attr_accessor :username

  def initialize(user, pass)
    @username = user
    @pass = pass
    @production_number = rand_prod_num
    @version="0.0.0"
  end

  def to_s
    "Objec of class #{self.class}, and ID: #{self.object_id} | #{@username}"
  end

  private
  def rand_prod_num
    start_d = rand(1000..99999)
    end_d = rand(1000..99999)
    alpha = ("A".."Z").to_a
    middle_d = "2021"
    5.times { middle_d << alpha.sample }
    "#{start_d}-#{middle_d}-#{end_d}"
  end
end

dvd = Gadget.new("N","456")
tv = Gadget.new("M","123")
p tv.production_number
p dvd.production_number
# tv.initialize #=> Error, private method
#p tv.rand_prod_num #=> Error, private method
