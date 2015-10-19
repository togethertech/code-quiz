require_relative 'quiz'

describe Quiz do

  before do
    @quiz = Quiz.new('questions.csv')
  end
  
  it "has an array of questions" do
    expect(@quiz.q_and_a.class).to eq(Array)
  end

  it "makes answer available" do
    expect(@quiz.q_and_a[0].answer).to eq("Linux")
  end

  it "makes questions available" do
    expect(@quiz.q_and_a[0].question).to eq("An open source operating system")
  end
end
