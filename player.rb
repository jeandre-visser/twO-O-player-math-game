require "pry"

class Player
  @@num_of_player = 0

  def initialize
    @@num_of_player += 1
    @player_long = "Player #{@@num_of_player}"
    @player_short = "P#{@@num_of_player}"
    @player_score = 3
  end
  
  attr_reader :player_long, :player_short, :player_score

  def losing_score
    @player_score -= 1
  end

  def final_score
    "#{player_score}/3"
  end

  attr_writer :player_long, :player_short, :player_score
end