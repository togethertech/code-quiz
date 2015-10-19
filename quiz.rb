class Quiz
  def initialize(file)
    @qua = Quanswer.new
  end

  def q_and_a
    [@qua]
  end
end

class Quanswer
  def answer
    'Linux'
  end

  def question
    'An open source operating system'
  end
end