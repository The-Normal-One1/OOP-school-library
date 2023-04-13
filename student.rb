require_relative 'person'
require './class_room'
require './book'
require './rental'

class Student < Person
  attr_accessor :classroom
  attr_reader :parent_permission

  def initialize(age, name = 'Unknown', classroom = 'Tenth', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student1 = Student.new(30, 'Ermiyas', 'Seventh')
student2 = Student.new(15, 'Mary', 'Eighth')

# student one
puts student1.name
puts student1.age
puts student1.parent_permission

#  student two
puts student2.name
puts student2.age
puts student2.parent_permission

# classroom has many students
classroom1 = Classroom.new('Tenth')
puts classroom1.add_student(student1)
puts classroom1.add_student(student2)

puts classroom1.students
puts classroom1.students.map(&:name)

# A student belongs to classroom
puts classroom1.students[0].classroom
puts classroom1.students[1].classroom

book1 = Book.new('The Alchemist', 'Paulo Coelho')
book2 = Book.new('The Little Prince', 'Antoine de Saint-Exupéry')

rental1 = Rental.new('2021-01-01', book1, student1)
rental2 = Rental.new('2021-01-02', book2, student2)

puts rental1.book
puts rental1.person
puts rental2.book
puts rental2.person
