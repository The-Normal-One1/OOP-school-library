class Classroom
    attr_accessor :lable
    attr_reader :students
    def initialize(lable)
        @lable = lable
        @students = []
    end

#classroom has many students
    def add_student(student)
        @students.push(student)
    end
end