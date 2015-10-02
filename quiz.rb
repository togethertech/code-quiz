def ask(question, correct_answer)
  puts question
  answer = gets.chomp.downcase
  loop do
    if answer == correct_answer.downcase
      puts "you got it right"
      break
    else
      puts "that was wrong"
      answer = gets.chomp.downcase
    end
  end
end

def load_questions(from_file)
  File.readlines(from_file).each do |line|
    a, q = line.split(',')
    ask(q, a)
  end
end

load_questions(ARGV.shift || 'questions.csv')