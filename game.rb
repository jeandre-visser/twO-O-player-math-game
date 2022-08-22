class Game
  def begin(players)
    puts "-----NEW TURN-----"
    qs = Question.new 
    puts "#{players[0].player_long}: #{qs.nxt_question}"
    print ">"
    answer = stdin.gets.chomp
  end
end