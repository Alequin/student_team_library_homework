# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book
# should be a hash with a title, which is a string, and rental
# details, which is another hash with a student name and due date.
#
# Create a method that list all the books and their corresponding
# details.
#
### Create a method that takes in a book title and returns all of the
# information about that book.
#
### Create a method that takes in a book title and returns only the
# rental details for that book.
#
# Create a method that takes in a book title and adds it to our
# book list (Add a new hash for the book with the student name
# and date being left as empty strings)
#
# Create a method that changes the rental details of a book by
# taking in the title of the book, the student renting it and the
# date it's due to be returned.

class Library

  def initialize(books)
    @books = books
  end

  def get_book_by_name(title)
    for book in @books
      return book if (book[:title] == title)
    end
    return nil
  end

  def get_rental_details_of(title)
    book = get_book_by_name(title)
    return book[:rental_details]
  end

  def get_book_details_as_string(title)
    book = get_book_by_name(title)
    rental_details = book[:rental_details]
    output = "Title: #{book[:title]}\n" +
      "   Rented by: #{rental_details[:student_name]}\n" +
      "   Due date: #{rental_details[:date]}"
    return output
  end

end
