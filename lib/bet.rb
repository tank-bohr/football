class Bet
  attr_reader :team, :value

  def initialize(team:, value:)
    @team = team
    @value = value
  end

  def gain(game)
    if game.draw?
      value
    elsif game.winner == team
      value * 2
    else
      0
    end
  end
end
