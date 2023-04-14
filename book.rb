class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  #   # has many rentals
  def add_rental(data, person)
    rental = Rental.new(data, self, person)
    @rentals.push(rental) unless @rentals.include?(rental)
  end
end
