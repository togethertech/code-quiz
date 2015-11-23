# asks the user questions & receives their answers
class Quiz
  attr_reader :qua
  def initialize(file)
    @qua = []
    File.readlines(file).each do |line|
      @qua << Quanswer.new(line.chomp)
    end
  end

  def current_question
    @qua[0].question
  end

  def current_answer
    @qua[0].answer
  end
end
