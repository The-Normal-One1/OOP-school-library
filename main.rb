require './app'
require './func'
require './preserve_data'

class Main
  def initialize
    @func = Func.new
  end

  def run
    @func.run
  end
end
main = Main.new
main.run
