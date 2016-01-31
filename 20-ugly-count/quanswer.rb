# stores a question & correct answer
class Quanswer
  attr_accessor :answer, :question
  def initialize(line)
    @answer, @question = line.split(',')
  end
end