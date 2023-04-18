require './func'

class Main
  def initialize
    @Func = Func.new
  end

  def run
    @Func.run
  end
end
main = Main.new
main.run
