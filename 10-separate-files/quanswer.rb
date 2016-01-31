class Quanswer
  attr_reader :correct_answer, :question
  attr_accessor :attempts
  def initialize(correct_answer, question)
    @correct_answer = correct_answer
    @question = question
    @attempts = 0
  end
end