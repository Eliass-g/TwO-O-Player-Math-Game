require './player'
require './question'

player_one = Player.new(1)
player_two = Player.new(2)

current_player = player_one
opp_player = player_two

while opp_player.score > 0

  question = Question.new

  puts "Player #{current_player.id}: What does #{question.num1} plus #{question.num2} equal?"
  answer = gets.chomp.to_i

  if answer == question.sum
    puts "Player #{current_player.id}: YES! You are correct."
  else
    current_player.score -= 1
    puts "Player #{current_player.id}: Seriously! No!"
  end

  if current_player.score == 0
    puts "Player #{opp_player.id} wins with a #{opp_player.score}/3"
    puts '----- GAME OVER -----'
    puts "Good bye!"
  else
    puts "P#{player_one.id}: #{player_one.score}/3 vs P#{player_two.id}: #{player_two.score}/3"
    puts '----- NEW TURN -----'
  end

  temp = current_player
  current_player = opp_player
  opp_player = temp

end
