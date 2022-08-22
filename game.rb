class Game
  # Create two new players
  def initialize
    @play1 = Player.new(1)
    @play2 = Player.new(2)
    # Start with player1
    @current = @play1
  end

  def start 
    puts "-----Welcome to the Multiplayer Math Game, enjoy!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    nxt_player_turn
  end

  def nxt_player_turn
    player_turn = PlayerTurn.new(@current.id)
    answer = player_turn.show_qs

    if answer == false
      @current.losing_score
    end

    score

    if @current.player_score == 0
      game_over
    else
      switch
      puts "\n----- NEW TURN -----"
      nxt_player_turn
    end
  end

  def score
    puts "P1: #{@play1.player_score}/3 vs P2: #{@play2.player_score}/3"
  end

  def switch
    if @current == @play1
      @current = @play2
    else
      @current = @play1
    end
  end

  def game_over
    switch
    puts "Player #{@current.id} wins with a score of #{@current.player_score}/3 \n----- GAME OVER -----\nGood Bye!"


  end

end








