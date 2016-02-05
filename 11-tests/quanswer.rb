class Quanswer
  attr_accessor :correct_answer, :question, :attempts
  def initialize(correct_answer, question)
    @correct_answer = correct_answer
    @question = question
    @attempts = 0
  end
end