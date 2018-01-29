require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  #Part A
  def test_get_student_name

    student = Student.new("Ria", 41)
    assert_equal("Ria",student.student_name())
  end
  def test_get_cohort_number
    student = Student.new("Ria", 41)
    assert_equal(41,student.cohort())
  end

  def test_update_student_name
    student = Student.new("Ria", 41)
    student.student_name = "Chris"
    assert_equal("Chris",student.student_name())
  end

  def test_update_conhort
    student = Student.new("Ria", 41)
    student.cohort = 41
    assert_equal(41,student.cohort())
  end

  def test_student_can_talk
    student = Student.new("Ria", 41)
    assert_equal("I can talk!",student.student_talk())
  end

  def test_student_favourite_language
    student = Student.new("Ria", 41)
    lang_string = student.favourite_language("Ruby")
    assert_equal("I love Ruby",lang_string)
  end

end
