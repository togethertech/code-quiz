require_relative 'quanswer'
require_relative 'quanswer_list'
require_relative 'quiz'

quanswers = [
  Quanswer.new(
    'Ruby',
    'Which programming language has Developer Happiness as a main feature?'
  ),
  Quanswer.new(
    'Rails',
    'Which is the most popular web framework for Ruby?'
  ),
  Quanswer.new(
    'Object',
    'Ruby is a ______ Oriented programming language'
  )  
]

quanswer_list = QuanswerList.new
quanswers.each do |quanswer|
  quanswer_list.add_quanswer(quanswer)
end

quiz = Quiz.new(quanswer_list)
quiz.start