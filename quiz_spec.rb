require_relative 'quiz'

describe Quiz do

  before do
    @quiz = Quiz.new("questions.csv")
  end
  
  it "has an array of questions" do
    @quiz.q_and_a.class.should == Array
  end

  it "makes answer available" do
    @quiz.q_and_a[0].answer == "Linux"
  end

  it "makes questions available" do
    @quiz.q_and_a[0].question == "Open source operating system"
  end
end
