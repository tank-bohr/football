require 'minitest/autorun'
require 'game'

class GameTest < Minitest::Test
  def test_winner
    home = Game.new(home: 4, guest: 2)
    assert_equal(:home, home.winner)

    guest = Game.new(home: 2, guest: 4)
    assert_equal(:guest, guest.winner)
  end

  def test_draw
    draw = Game.new(home: 2, guest: 2)
    assert(draw.draw?)

    not_draw = Game.new(home: 4, guest: 2)
    refute(not_draw.draw?)
  end
end
