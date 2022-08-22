class Game
  def begin(players)
    puts "-----NEW TURN-----"
    qs = Question.new 
    puts "#{players[0].player_long}: #{qs.nxt_question}"
    print ">"
    answer = stdin.gets.chomp

    # Determine if player answer was correct
    if answer.to_i == qs.num1 + qs.num2
      puts "#{players[0].player_long}: YES! You are correct."
    else 
      players[0].losing_score
      puts "#{players[0].player_long}: Seriously? No!"
    end

    # Determine score of each player
    if players[0].score == 0
      puts "#{players[1].player_long} wins with a score of #{players[1].final_score} \n----- GAME OVER -----\nGood Bye!"
    else
      # Reverse player 1 and player 2 in the players array and continue with the game
      players.reverse!
      # Show the score
      "#{players[1].player_short}: #{players[1].final_score} vs #{players[0].player_short}: #{players[0].final_score}"
      
      # Begin a new question
      begin(players)
    end
  end
end