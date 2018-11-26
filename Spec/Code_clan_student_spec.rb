require('minitest/autorun')
require('minitest/rg')
require_relative('../Code_clan_student')

class CodeClanStudent < MiniTest::Test

  def test_student_name()
    student = Student.new("Bob", "E28")
    assert_equal("Bob", student.name)
  end

def test_student_cohort()
  student = Student.new("Bob", "E28")
  assert_equal("E28", student.cohort)
end

end
