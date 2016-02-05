class QuanswerList
  def initialize
    @list = []
  end

  def add_quanswer(quanswer)
    @list << quanswer
  end

  def current_quanswer
    @list[0]
  end

  def current_question
    current_quanswer.question
  end

  def current_correct_answer
    current_quanswer.correct_answer
  end

  def current_attempts
    current_quanswer.attempts
  end

  def right
    @list.shift
  end

  def wrong
    current_quanswer.attempts += 1
    @list.rotate!
  end

  def empty?
    @list.empty?
  end
end