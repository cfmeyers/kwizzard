require_relative './lib/kwizard'
require 'pry'

kwizard = Kwizard.new('./questions')

# topic = ARGV[0]

while true
  # puts topic
  dialogue = kwizard.random_dialogue('python')
  puts dialogue.question
  gets.chomp
  puts dialogue.answer
  gets.chomp
end
