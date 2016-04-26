require 'minitest/autorun'
require 'bet'

class BetTest < Minitest::Test
  
  Game = Struct.new(:winner, :draw?)
  
  def test_gain
    bet = Bet.new(team: :home,  value: 100)

    draw = Game.new(nil, true)
    assert_equal(100, bet.gain(draw))

    win = Game.new(:home, false)
    assert_equal(200, bet.gain(win))

    loose = Game.new(:guest, false)
    assert_equal(0, bet.gain(loose))
  end

  def test_addition
    a = 2
    b = 2
    c = a + b
    assert_equal(4, c)
  end
end


# arrange - условия
# act - действие, которое проверяешь 
# assert - инвариант 

# а = 2
# b = 2

# c = a + b

# assert
# c == 4
