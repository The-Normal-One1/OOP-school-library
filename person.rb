class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end
end

person1 = Person.new(30, 'John', false)
person2 = Person.new(15, 'Mary', true)

# p person1
# person one
puts person1.name
puts person1.age
puts person1.is_of_age?
puts person1.can_use_services?

# person two
puts person2.name
puts person2.age
puts person2.is_of_age?
puts person2.can_use_services?
