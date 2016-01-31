def ask(correct_answer, question)
  puts question
  answer = gets.chomp
  if answer.downcase == correct_answer.downcase
    puts 'Correct!'
  else
    puts "#{answer} is not it, the answer is #{correct_answer}"
  end
end

ask('Ruby', 'Name the first programming language designed with Developer Happiness in mind?')
ask('Rails', 'Which is the most popular web framework for Ruby?')
ask('Object', 'Ruby is a ______ Oriented programming language')
