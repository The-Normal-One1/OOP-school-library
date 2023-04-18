require 'fileutils'
require 'json'

FileUtils.mkdir_p('stored_data')

base = "#{Dir.pwd}/stored_data"

File.open("#{base}/books.json", 'w') unless File.exist?("#{base}/books.json")
File.open("#{base}/people.json", 'w') unless File.exist?("#{base}/people.json")
File.open("#{base}/rentals.json", 'w') unless File.exist?("#{base}/rentals.json")

def write_data(filename, data)
  case filename
  when books.json
    write_books(data)
  when people.json
    write_people(data)
  when rentals.json
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

  File.write("#{base}/books.json", book_array.to_json, mode: 'a')
end

def write_people(data)
  base = "#{Dir.pwd}/stored_data"
  people_array = []
  data.each do |person|
    people_array.push({ class: person.status, name: person.name, age: person.age,
                        parent_permission: (if person.status == 'Student'
                                              person.parent_permission
                                            end), id: person.id, specialization: (if person.status == 'Teacher'
                                                                                    person.specialization
                                                                                  end) })
  end
  File.write("#{base}/people.json", people_array.to_json, mode: 'a')
end

def write_rentals(data)
  base = "#{Dir.pwd}/stored_data"
  rental_array = []
  data.each do |rental|
    rental_array.push({ date: rental.date, book: rental.book, person: rental.person, id: rental.id })
  end
  File.write("#{base}/rentals.json", rental_array.to_json, mode: 'a')
end
