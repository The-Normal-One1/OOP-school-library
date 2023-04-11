require_relative 'person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, name = 'Unknown', classroom = 'Tenth')
    super(age, name, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student1 = Student.new(30, 'Ermiyas', 'Seventh')
student2 = Student.new(15, 'Mary', 'Eighth')

#  p student1
#  p student2
# student one
puts student1.name
puts student1.age
puts student1.parent_permission

#  student two
puts student2.name
puts student2.age
puts student2.parent_permission
