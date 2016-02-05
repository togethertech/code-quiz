require_relative '../quiz'
require_relative '../quanswer_list'

describe Quiz do
  before do
    @quanswer = Quanswer.new("Ruby", "Most fun programming language")
    @quanswer_list = QuanswerList.new
    @quanswer_list.add_quanswer(@quanswer)
    @quiz = Quiz.new(@quanswer_list)
  end

  it 'is a Quiz' do
    expect(@quiz.class).to eq(Quiz)
  end

  it 'asks a question' do
    expect { @quiz.ask }.to output("Most fun programming language\n").to_stdout
  end

  #internal method, do you think it needs a test?
  # it 'knows if an answer is right or wrong' do
  #   expect(@quiz.correct?('Ruby')).to eq(true)
  #   expect(@quiz.correct?('Java')).to eq(false)
  # end

  it 'checks if the answer is correct' do
    expect { @quiz.submit_answer('Ruby') }.to output("Correct!\n").to_stdout
   end

  it 'checks if the answer is wrong' do
     expect { @quiz.submit_answer('Java') }.to output("No, the correct answer is Ruby\nYou tried this question 1 times\n").to_stdout
  end

  it 'knows when the quiz is done' do
    quanswer_list2 = QuanswerList.new
    quiz2 = Quiz.new(quanswer_list2)
    expect(quiz2.done?).to eq(true)
    expect(@quiz.done?).to eq(false)
  end
end