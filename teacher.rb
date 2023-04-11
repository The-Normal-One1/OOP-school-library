require './person'

class Teacher < Person
  attr_reader :specialization, :parent_permission

  def initialize(age, name = 'Unknown', specialization = 'Math', parent_permission: true)
    super(age, name, parent_permission: parent_permission)

    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new(30, 'John', 'Math')
teacher2 = Teacher.new(25, 'Mary', 'English')

# teacher one
puts teacher1.name
puts teacher1.age
puts teacher1.parent_permission
puts teacher1.specialization
puts teacher1.can_use_services?
puts teacher1.id

# teacher two
puts teacher2.name
puts teacher2.age
puts teacher2.parent_permission
puts teacher2.specialization
puts teacher2.can_use_services?
puts teacher2.id
