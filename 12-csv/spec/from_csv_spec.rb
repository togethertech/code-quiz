require_relative '../from_csv.rb'

describe FromCsv do
  let(:list) { FromCsv.build('rails.csv') }

  it 'returns a quanswer list' do
    expect(list.class).to eq(QuanswerList)
  end

  it 'adds the questions & answers from the file to the list' do
    expect(list.current_question).to include('which action in which')
    expect(list.current_correct_answer).to eq('router')
  end
end