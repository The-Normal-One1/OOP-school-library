require "./book.rb"
require "./person.rb"
require './teacher.rb'
require './student.rb'

class App
    def list_all_books(books, show_list: false)
        puts "No list of books are found" if books.empty?
        books.each do |book, list|
            puts "#{"#{list})" if show_list} Title: #{book.title}, Author: #{book.author}"
        end
        puts '\n'
    end

    def list_all_people(people, show_list: false)
        puts "No list of people are found" if people.empty?
        people.each do |person, list|
            puts "#{"#{list})" if show_list} [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        puts '\n'
    end

    def create_person(select, age, name,specialization, parent_permission)
        classroom = Classroom.new('Tenth')
        case select
        when 1
            Student.new(age, name, parent_permission)
        when 2
            Teacher.new(age, name, specialization, parent_permission: parent_permission)
        end
    end
        
    end
end