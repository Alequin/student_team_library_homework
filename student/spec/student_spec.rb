require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("James", 13)
  end

  def test_get_name
    assert_equal("James", @student.name)
  end

  def test_set_name
    @student.name = "Andrew"
    assert_equal("Andrew", @student.name)
  end

  def test_get_cohort
    assert_equal(13, @student.cohort)
  end

  def test_set_cohort
    @student.cohort = 14
    assert_equal(14, @student.cohort)
  end

  def test_student_talk
    assert_equal("I can talk", @student.talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @student.favourite_language("Ruby"))
  end

end
