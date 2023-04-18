require './app'

class Func
  attr_accessor :app, :list_of_books, :list_of_people

  def initialize
    @app = App.new
    @list_of_books = []
    @list_of_people = []
  end

  # list of options
  def options
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    gets.chomp.to_i
  end

  
end
