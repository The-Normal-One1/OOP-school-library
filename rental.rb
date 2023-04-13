class Rental
    attr_accessor :date, :book
    def initialize(date, book)
        @date = date

        @book = book
        book.rentals.push(self) unless book.rentals.include?(self)
    end    
end