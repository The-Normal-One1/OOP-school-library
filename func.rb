require './app'

class Func
  attr_accessor :app, :list_of_books, :list_of_people

  def initialize
    @app = App.new
    @list_of_books = []
    @list_of_people = []
  end
end
