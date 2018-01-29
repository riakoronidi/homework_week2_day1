#Part A
class Student
  attr_accessor :student_name, :cohort

  def initialize(input_student_name, input_cohort)
    @student_name = input_student_name
    @cohort = input_cohort
  end

  def student_talk()
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}"
  end

end
