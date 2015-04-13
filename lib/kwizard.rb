require 'yaml'
require 'pry'

class Kwizard
  attr_reader :questions_path, :topics, :dialogues

  def initialize(questions_path)
    @questions_path = questions_path
    @dialogues = {}
    load_files
  end

  def random_dialogue(topic)
    @dialogues[topic].sample
  end

  def load_files
    @topics = []
    Dir.foreach(@questions_path) do |file_name|
      next if file_name.eql?('.') || file_name.eql?('..')
      topic = file_name.gsub('.yaml', '')
      @topics.push(topic)
      @dialogues[topic] = []
      puts 

      File.open(@questions_path + '/' + file_name) do |file|
        YAML.load_documents(file) do |ydoc|
          @dialogues[topic] << Dialogue.new(ydoc['question'], ydoc['answer'])
        end
      end

    end
  end

end

class Dialogue 
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def ==(another_dialogue)
    self.question == another_dialogue.question && self.answer == another_dialogue.answer
  end
end












