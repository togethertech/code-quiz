# asks the user questions & receives their answers
require_relative 'quanswer'
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

  def greet
    "Hello, welcome to Code Quiz"
  end

  def start
    puts greet
    puts current_question
  end
end

if __FILE__ == $0
  quiz = Quiz.new('questions.csv')
  quiz.start
end
