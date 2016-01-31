@quanswers = [
  {
    correct_answer: 'Ruby',
    question: 'Which programming language has Developer Happiness as a main feature?',
    attempts: 0
  },
  {
    correct_answer: 'Rails',
    question: 'Which is the most popular web framework for Ruby?',
    attempts: 0
  },
  {
    correct_answer: 'Object',
    question: 'Ruby is a ______ Oriented programming language',
    attempts: 0
  }
]

def ask(quanswer)
  puts quanswer[:question]
  answer = gets.chomp
  decide(answer, quanswer)
end

def decide(answer, quanswer)
  if correct?(answer, quanswer)
    puts 'Correct!'
    @quanswers.shift
  else
    puts "#{answer} is not it, the answer is #{quanswer[:correct_answer]}"
    quanswer[:attempts] += 1
    puts "You have made #{quanswer[:attempts]} attempts on this question"
    @quanswers.rotate!
  end
end

def correct?(answer, quanswer)
  answer.downcase == quanswer[:correct_answer].downcase
end

until @quanswers.size == 0
  ask(@quanswers[0])
end
