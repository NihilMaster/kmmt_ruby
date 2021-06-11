module AppStore
  # Struct
  App = Struct.new(:name, :developer, :version)
  APPS = [
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.80),
    App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find {|a| a.name == name}
  end
end

class Gadget

  attr_reader :apps
  attr_writer :pass
  attr_accessor :username

  def initialize(user, pass)
    @username = user
    @pass = pass
    @apps = []
  end

  def i_apps(n)
    app = AppStore.find_app(n)
    @apps << app unless @apps.include?(app)
  end

  def d_apps(n)
    app = @apps.find {|i_app| i_app.name == n }
    apps.delete(app) unless app.nil?
  end

  private

  attr_writer :apps

end

a = Gadget.new("M", "123")
p a.apps

a.i_apps(:Chat)
a.i_apps(:Twitter)
a.i_apps(:Weather)
p a.apps

a.d_apps(:Chat)
a.d_apps(:Weather)
p a.apps
