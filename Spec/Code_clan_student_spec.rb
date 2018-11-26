require('minitest/autorun')
require('minitest/rg')
require_relative('../Code_clan_student')

class CodeClanStudent < MiniTest::Test

  def test_student_name()
    student = Student.new("Bob", "E28")
    assert_equal("Bob", student.name)
  end



end
