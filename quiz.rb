# asks the user questions & receives their answers

require 'active_support/inflector'

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
      c = 0
      f = 0
    until @qua.empty?
      puts current_question
      answer = gets.chomp.downcase
      if answer == current_answer.downcase
        puts "You, are correct"
        c +=1
        puts "you passed #{c}" + " time".pluralize(c)
        @qua.shift
      else
        puts "Not quite, try again"
        
        @qua = @qua.rotate(1)
        f +=1
        puts "you failed #{f}" + " time".pluralize(f)
      end
    end
  end
end


if __FILE__ == $0
  quiz = Quiz.new('questions.csv')
  quiz.start
end
