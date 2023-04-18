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

  def list_books
    @app.list_all_books(@list_of_books, show_list: true)
  end

  def list_people
    @app.list_all_people(@list_of_people, show_list: true)
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    select = gets.chomp.to_i

    puts 'Age:'
    age = gets.chomp.to_i

    puts 'Name:'
    name = gets.chomp

    puts 'Specialization:' if select == 2
    specialization = gets.chomp if select == 2

    puts 'Has parent permission? [Y/N]:' if select == 1
    parent_permission = gets.chomp.downcase == 'y' if select == 1

    person = @app.create_person(select, age, name, specialization, parent_permission)
    @list_of_people << person
    puts 'Person created successfully'
  end

  def create_book
    puts 'Title:'
    title = gets.chomp

    puts 'Author:'
    author = gets.chomp

    book = @app.create_book(title, author)
    @list_of_books << book
    puts 'Book created successfully'
  end

  
end
