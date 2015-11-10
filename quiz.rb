class Quiz
  attr_reader :qua
  def initialize(file)
    @qua = []
    File.readlines(file).each do |line|
      @qua << Quanswer.new(line.chomp)
    end
  end
end

class Quanswer
  attr_accessor :answer, :question
  def initialize(line)
    @answer, @question = line.split(',')
  end
end
