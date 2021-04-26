#Required files for game to run

require "./player.rb"
require "./questions.rb"

# Starting game propmts
# THis will also allow us to get player 1 and 2's names

puts`clear`
puts "Welcome to my math game, where if you cant get the questions right, you should go back to grade school"
puts "Lets get started shall we?"
puts "Please press enter to start"
gets.chomp
puts "Player 1, name please?"
player1 = gets.chomp
puts "#{player1} is it? weird name..."
puts "Player 2, name please?"
player2 = gets.chomp
puts "#{player2} is it? much cooler than #{player1}..."
puts "Ok lets get started!"


# Creates two new players

Player1 = Player.new(player1.to_s)
Player2 = Player.new(player2.to_s)

# THis method creates each round of the game

def round selected_player 
  puts "#{selected_player.name}: what does #{Question.number1} + #{Question.number2} equal?"
  value = gets.chomp
  
  #It checks to see if a question is right or not and outputs the corresponding text prompt

  Question.output(value) ? 
  (puts "Correct! Wow you are so smart!") : 
  (selected_player.incorrect
  puts "Seriously? No!")
    
  #Outputs the score of the game

  puts "#{Player1.name}: #{Player1.life}/3 vs #{Player2.name}: #{Player2.life}/3"
end

#Looping through each round and outputting winner

loop {

  round(Player1)
  break puts "Player 2 wins with a score of #{Player2.life}/3" if (Player1.end)

  round(Player2)
  break puts "Player 1 wins with a score of #{Player1.life}/3" if (Player2.end)

  puts "Please press enter to continue the game"
  gets.chomp
  puts `clear`
  puts "-------NEXT ROUND-------"

}
  

# End game

puts "Game over!"
 
