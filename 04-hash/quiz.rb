def ask(quanswer)
  puts quanswer[:question]
  answer = gets.chomp
  if answer.downcase == quanswer[:correct_answer].downcase
    puts 'Correct!'
  else
    puts "#{answer} is not it, the answer is #{quanswer[:correct_answer]}"
  end
end

quanswers = [
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

quanswers.each do |quanswer|
  ask(quanswer)
end
