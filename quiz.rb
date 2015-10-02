@q_and_a = []

def load_questions(from_file)
  File.readlines(from_file).each do |line|
    @q_and_a << line.split(',')
  end
end

load_questions(ARGV.shift || 'questions.csv')

until @q_and_a.length == 0
  puts @q_and_a[0][1]
  answer = gets.chomp.downcase
  if answer == @q_and_a[0][0].downcase
    puts "you got it right"
    @q_and_a.shift
  else
    puts "that was wrong"
    puts "The right answer was #{@q_and_a[0][0]}"
    @q_and_a = @q_and_a.rotate(1)
  end
end
