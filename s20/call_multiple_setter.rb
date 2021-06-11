class Gadget

  attr_reader :apps
  attr_writer :pass
  attr_accessor :username

  def initialize(user, pass)
    @username = user
    @pass = pass
    @apps = apps_gen
  end

  def reset(user, pass)
    self.username = user
    self.pass = pass
    self.apps = []
  end

  private

  attr_writer :apps

  def apps_gen
    num = rand(1000..9999)
    alpha = ("A".."Z").to_a.sample
    aux = []
    aux << "#{alpha}-#{num}"
    self.pass = aux
  end
end

x = Gadget.new("M","123")
p x.apps
# p x.apps = ["A3497"] #=> Error, private method 'apps='
