class Quiz
  def initialize(quanswer_list)
    @quanswer_list = quanswer_list
  end

  def ask
    puts @quanswer_list.current_question
  end

  def submit_answer(user_answer)
    if correct?(user_answer)
      puts "Correct!"
      @quanswer_list.right
    else
      puts "No, the correct answer is #{@quanswer_list.current_correct_answer}"
      puts "You tried this question #{@quanswer_list.current_attempts + 1} times"
      @quanswer_list.wrong
    end
  end

  def correct?(user_answer)
    user_answer.downcase == @quanswer_list.current_correct_answer.downcase
  end

  def done?
    @quanswer_list.empty?
  end

  def start
    until done?
      ask
      submit_answer(gets.chomp)
    end
  end
end