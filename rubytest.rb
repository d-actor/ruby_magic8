# - ability to reset answers back to the original bank (hint: think arr.clone)
#  via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
#  via easter egg question ("print_answers")
# -ability to use script arguments when the magic eight ball is started to do bonus functionality above
#  for example ruby magic_eight.RB add_answers
# this would start your script but instead of running the regular way you would be prompted to add answers first

require 'pry'
require 'colorize'

@answers = [
  "It is certain.",
  "It is decidedly so.",
  "Without a doubt.",
  "Yes, definitely.",
  "You may rely on it.",
  "As I see it, yes.",
  "Yas Queen.",
  "Most likely.",
  "Outlook good.",
  "Yes.",
  "All signs point to yes.",
  "Reply hazy, try again.",
  "Ask again later.",
  "Better not tell you now.",
  "Cannot predict now.",
  "Concentrate and ask again.",
  "Don't count on it.",
  "My reply is no.",
  "My sources say no.",
  "Outlook not so good.",
  "Very doubtful."
]

def eightball
  puts "--MAGIC RUBY 8BALL!--".cyan
  puts "\n***Type 'Quit' at any time to exit program***\n".magenta
  puts "Enter your question: ".cyan
  question = gets.strip
  case question
    when question == "Quit", "Q", "quit", "q", "QUIT"
      puts "Goodbye!".magenta
      exit
    when question == "Add Answer", "Add answer", "add answer", "add Answer", "ADD ANSWER"
      puts "*SUPER SECRET EASTER EGG ADD ANSWER MODE!*"
      puts "Well look at you bud... enter the answer you'd like to add: "
      add_ans = gets.strip
      @answers.each do |value|
        if add_ans == value
          puts "That answer is already in the 8ball."
          eightball
        end
      end
      @answers << add_ans
      puts "Added!"
      eightball
    else
      puts "\n"
      puts @answers.sample
      puts "\n"
  end
  eightball
end

eightball
