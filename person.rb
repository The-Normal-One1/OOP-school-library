require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    name
  end

   def add_rental(date, book)
    rental = Rental.new(date, self, book)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  private

  def is_of_age?
    @age >= 18
  end
end

person1 = Person.new(30, 'John')
person2 = Person.new(15, 'Mary')

# person one
puts person1.name
puts person1.age
puts person1.can_use_services?

# person two
puts person2.name
puts person2.age
puts person2.can_use_services?

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name

puts capitalized_person.correct_name
puts capitalized_trimmed_person.correct_name
