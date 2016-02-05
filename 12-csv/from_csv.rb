class FromCsv
  def self.build(file)
    quanswer_list = QuanswerList.new
    File.readlines(file).each do |line|
      quanswer_list.add_quanswer(quanswer_from_line(line))
    end
    quanswer_list
  end

  def self.quanswer_from_line(line)
    answer, question = line.split(',')
    Quanswer.new(answer, question)
  end
end