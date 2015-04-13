require_relative './lib/kwizard'
require 'pry'

kwizard = Kwizard.new('./questions')
clear_code = %x{clear}
topic = ARGV.shift

abort('The topic you passed as an argument has no questions') unless kwizard.topics.include? topic
print clear_code

puts "Welcome to Kwizard.  Prepare to be kwizzed..."

while true
  dialogue = kwizard.random_dialogue(topic)
  puts dialogue.question
  puts '================ hit any key to see the answer ================'
  gets.chomp
  puts dialogue.answer
  puts 'hit "q" to quit, any other key to go to next question'
  response = gets.chomp
  abort('Thank you for playing') if response == 'q' 
  print clear_code
end
