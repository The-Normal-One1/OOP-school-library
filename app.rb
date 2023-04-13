require "./book.rb"

class App
    def list_all_books(books, show_list: false)
        puts "No list of books are found" if books.empty?
        books.each do |book, list|
            puts "#{"#{list})" if show_list} Title: #{book.title}, Author: #{book.author}"
        end
        puts '\n'
    end
end