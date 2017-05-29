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
        title: "stormlight archive",
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

  def test_print_single_book_details
    expected = "Title: lord of the rings\n"+
      "   Rented by: Jeff\n" +
      "   Due date: 01/12/16"
      result = @library.get_book_details_as_string('lord of the rings')
      assert_equal(expected, result)
  end

  def test_print_all_books_details
    expected = @library.get_book_details_as_string("lord of the rings") + "\n\n" +
      @library.get_book_details_as_string("stormlight archive") + "\n\n" +
      @library.get_book_details_as_string("the name of the wind")
    result = @library.get_all_books_details_as_string()
    assert_equal(expected, result)
  end

  def test_add_new_book
    pre_add_books_length = @library.get_book_count()
    new_book = {
      title: "Tilt",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @library.add_book(new_book)
    assert_equal(pre_add_books_length+1, @library.get_book_count())
    assert_equal(new_book, @library.get_book_by_name(new_book[:title]))
  end

  def test_change_rental_details
    new_student = "Harry"
    new_due_date = "20/12/16"
    book_to_test = @books[0]
    @library.change_rental_details(book_to_test[:title], new_student, new_due_date)

    rental_details_after_change = @library.get_rental_details_of(book_to_test[:title])
    rented_by_result = rental_details_after_change[:student_name]
    due_date_result = rental_details_after_change[:date]

    assert_equal(new_student, rented_by_result)
    assert_equal(new_due_date, due_date_result)
  end

end
