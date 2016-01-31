class Quiz
  def initialize(quanswers)
    @quanswers = quanswers
  end

  def ask(quanswer)
    puts quanswer.question
    user_answer = gets.chomp
    reply(user_answer, quanswer)
  end

  def reply(answer, quanswer)
    if correct?(answer, quanswer)
      puts 'Correct!'
      @quanswers.shift
    else
      puts "#{answer} is not it, the answer is #{quanswer.correct_answer}"
      quanswer.attempts += 1
      puts "You have made #{quanswer.attempts} attempts on this question"
      @quanswers.rotate!
    end
  end

  def correct?(answer, quanswer)
    answer.downcase == quanswer.correct_answer.downcase
  end

  def start
    until @quanswers.size == 0
      ask(@quanswers[0])
    end
  end
end