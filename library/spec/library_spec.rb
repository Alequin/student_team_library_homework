require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < Minitest::Test

  def setup
    books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "StormLight Archive",
        rental_details: {
          student_name: "Andrew",
          date: "05/12/16"
        }
      },
      {
        title: "The Name of The Wind",
        rental_details: {
          student_name: "Sandy",
          date: "15/12/16"
        }
      },
    ]
    @library = Library.new(books)
  end

end
