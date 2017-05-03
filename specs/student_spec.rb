require ("minitest/autorun")
require("minitest/rg")
require_relative("../models/student")

class TestStudent < Minitest::Test

  def setup
    @student1 = Student.new( "Harry", "Potter", "Burns", 20 )
  end


  def test_create_student
    assert_equal(Student, @student1.class)
  end

  def test_get_name
    assert_equal("Harry", @student1.first_name)
  end



end

