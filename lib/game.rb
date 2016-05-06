class Game
  attr_reader :home, :guest

  def initialize(home:, guest:)
    @home = home
    @guest = guest
  end

  def winner
    if home > guest
      :home
    elsif home < guest
      :guest
    end
  end

  def draw?
    home == guest
  end
end
