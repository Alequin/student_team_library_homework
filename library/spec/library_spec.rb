require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < Minitest::Test

  def setup
    @books = [
      {
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "stormLight archive",
        rental_details: {
          student_name: "Andrew",
          date: "05/12/16"
        }
      },
      {
        title: "the name of the wind",
        rental_details: {
          student_name: "Sandy",
          date: "15/12/16"
        }
      },
    ]
    @library = Library.new(@books)
  end

  def test_get_book_by_name
    result = @library.get_book_by_name("lord of the rings")
    assert_equal(@books[0], result)
  end

  def test_get_rental_details
    result = @library.get_rental_details_of("lord of the rings")
    assert_equal(@books[0][:rental_details], result)
  end

end
