require_relative '../quanswer_list'

describe QuanswerList do
  before do
    @quanswer_list = QuanswerList.new
    @quanswer_list.add_quanswer(
      Quanswer.new("Ruby", "Most fun programming language")
    )
    @quanswer_list.add_quanswer(
      Quanswer.new("Rails", "Most popular web framework for Ruby")
    )
  end

  it 'is a QuanswerList' do
    expect(@quanswer_list.class).to eq(QuanswerList)
  end

  it 'has a current question' do
    expect(@quanswer_list.current_question).to eq('Most fun programming language')
  end

  it 'has a current question' do
    expect(@quanswer_list.current_correct_answer).to eq('Ruby')
  end

  it 'has a current attempts' do
    expect(@quanswer_list.current_attempts).to eq(0)
  end

  it "knows when it's empty" do
    expect(@quanswer_list.empty?).to eq(false)
    quanswer_list2 = QuanswerList.new
    expect(quanswer_list2.empty?).to eq(true)
  end
end