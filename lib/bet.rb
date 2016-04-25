class Bet
  def initialize(team:, value:)
    @team = team
    @value = value
  end
  attr_reader :team, :value

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