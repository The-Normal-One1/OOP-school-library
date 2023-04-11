require './person.rb'

class Teacher < Person

    attr_reader :specialization, :parent_permission
    def initialize(age, name = 'Unknown', parent_permission = true, specialization = 'Math')
    
        super(age, name, parent_permission)
    
        @specialization = specialization
    
    end
    
    def can_use_services?
        if is_of_age? || @parent_permission
            true
        else
            false
        end
    end

end

teacher1 = Teacher.new(30, 'John', false, 'Math')
teacher2 = Teacher.new(25, 'Mary', true, 'English')

# p teacher1
# p teacher2

# teacher one
puts teacher1.name
puts teacher1.age
puts teacher1.parent_permission
puts teacher1.specialization
puts teacher1.can_use_services?
puts teacher1.is_of_age?
puts teacher1.id

# teacher two
puts teacher2.name
puts teacher2.age
puts teacher2.parent_permission
puts teacher2.specialization
puts teacher2.can_use_services?
puts teacher2.is_of_age?
puts teacher2.id
