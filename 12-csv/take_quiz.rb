require_relative 'quanswer'
require_relative 'quanswer_list'
require_relative 'quiz'
require_relative 'from_csv'

quanswer_list = FromCsv.build('rails.csv')

quiz = Quiz.new(quanswer_list)
quiz.start