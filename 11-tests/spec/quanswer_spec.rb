require_relative '../quanswer'
describe Quanswer do
  let(:quanswer) { Quanswer.new("Ruby", "Most fun programming language") }

  it "has a correct answer" do
    expect(quanswer.correct_answer).to eq('Ruby')
  end

  it "has a question" do
    expect(quanswer.question).to eq('Most fun programming language')
  end

  it "has an amount of attempts" do
    expect(quanswer.attempts).to eq(0)
  end
end
