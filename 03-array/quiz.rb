def ask(correct_answer, question)
  puts question
  answer = gets.chomp
  if answer.downcase == correct_answer.downcase
    puts 'Correct!'
  else
    puts "#{answer} is not it, the answer is #{correct_answer}"
  end
end

quanswers = [
  ['Ruby', 'Name the first programming language designed with Developer Happiness in mind?'],
  ['Rails', 'Which is the most popular web framework for Ruby?'],
  ['Object', 'Ruby is a ______ Oriented programming language']
]

quanswers.each do |quanswer|
  ask(quanswer[0], quanswer[1])
end
