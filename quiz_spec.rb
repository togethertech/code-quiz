require_relative 'quiz'

describe Quiz do

  before do
    @quiz = Quiz.new("questions.csv")
  end
  
  it "has an array of questions" do
    @quiz.questions.class.should == Array
  end
end