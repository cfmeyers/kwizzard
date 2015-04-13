require_relative '../lib/kwizard'

describe Kwizard do
  let(:kwizard) { Kwizard.new('./spec/test_questions')}

  describe '#loads_files' do

    it 'populates list of topics by file name' do
      expect(kwizard.topics.sort).to eq(['python', 'ruby'])
    end

    it 'creates a hash whose keys are topics and values are arrays of Dialogues' do
      expect(kwizard.dialogues.keys.sort).to eq(['python', 'ruby']) 
    end

    it "creates a Dialogue object for each item in the YAML file" do
      expect(kwizard.dialogues['python'][0]).to eq(Dialogue.new('what does the fox say?', 'no one knows'))
    end


  end
end

describe Dialogue do

  it 'responds to question' do
    expect(Dialogue.new('q','a')).to respond_to(:question)
  end

  it 'responds to answer' do
    expect(Dialogue.new('q','a')).to respond_to(:answer)
  end

  it 'must have a question and an answer' do
    expect{Dialogue.new()}.to raise_error(ArgumentError)
  end

  it "is equal to another Dialogue if the questions and answers are equal" do
    expect(Dialogue.new('q', 'a')).to eq(Dialogue.new('q', 'a'))
  end

end
