@quanswers = [
  {
    correct_answer: 'Ruby',
    question: 'Name the first programming language designed with Developer Happiness in mind?'
  },
  {
    correct_answer: 'Rails',
    question: 'Which is the most popular web framework for Ruby?'
  },
  {
    correct_answer: 'Object',
    question: 'Ruby is a ______ Oriented programming language'
  }
]

def ask(quanswer)
  puts quanswer[:question]
  answer = gets.chomp
  if answer.downcase == quanswer[:correct_answer].downcase
    puts 'Correct!'
    @quanswers.shift
  else
    puts "#{answer} is not it, the answer is #{quanswer[:correct_answer]}"
  end
end

until @quanswers.size == 0
  ask(@quanswers[0])
end
