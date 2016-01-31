require_relative 'quanswer'
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

quiz = Quiz.new(quanswers)
quiz.start