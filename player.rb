class Player

  def initialize(id)
    @id = id
    @player_score = 3
  end
  
  attr_reader :id, :player_score

  def losing_score
    @player_score -= 1
  end
  
end