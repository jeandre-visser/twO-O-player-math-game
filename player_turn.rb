class PlayerTurn
  def initialize(player_id)
    @id = player_id
    @qs = Question.new
  end

  def show_qs
    puts "Player #{@id}: #{@qs.nxt_question}"
    print "> "
    answer = $stdin.gets.chomp

    if answer.to_i == @qs.correct
      puts "Player #{@id}: YES! You are correct."
      true
    else
      puts "Player #{@id}: Seriously? No!"
      false
    end

  end
end