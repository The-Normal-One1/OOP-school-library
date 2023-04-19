require 'fileutils'
require 'json'
require './func'

FileUtils.mkdir_p('stored_data')

base = "#{Dir.pwd}/stored_data"

File.open("#{base}/books.json", 'w') unless File.exist?("#{base}/books.json")
File.open("#{base}/people.json", 'w') unless File.exist?("#{base}/people.json")
File.open("#{base}/rentals.json", 'w') unless File.exist?("#{base}/rentals.json")

def write_data(filename, data)
  case filename
  when 'books.json'
    write_books(data)
  when 'people.json'
    write_people(data)
  when 'rentals.json'
    write_rentals(data)
  else
    puts 'Error: Invalid filename'
  end
end

def write_books(data)
  base = "#{Dir.pwd}/stored_data"
  book_array = []
  data.each do |book|
    book_array.push({ title: book.title, author: book.author })
  end

  File.write("#{base}/books.json", book_array.to_json, mode: 'w')
end

def write_people(data)
  base = "#{Dir.pwd}/stored_data"
  people_array = []
  data.each do |person|
    people_array.push(if person.instance_of?(Student)
                        { person: 'Student', name: person.name, age: person.age, id: person.id,
                          parent_permission: person.parent_permission }
                      else
                        { person: 'Teacher', name: person.name, age: person.age, specialization: person.specialization,
                          id: person.id, parent_permission: true }
                      end)
  end
  File.write("#{base}/people.json", people_array.to_json, mode: 'w')
end

def write_rentals(data)
  base = "#{Dir.pwd}/stored_data"
  rental_array = []
  data.each do |rental|
    rental_array.push({ date: rental.date, book: rental.book, person: rental.person, id: rental.id })
  end
  File.write("#{base}/rentals.json", rental_array.to_json, mode: 'w')
end
