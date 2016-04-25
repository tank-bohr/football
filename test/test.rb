require 'minitest/autorun'
require 'bet'
require 'game'
class Test < Minitest::Test
  
 def test_calculate
  bet = Bet.new(team: :home,  value: 100)

  
  draw = Game.new(home: 2,  guest: 2)
  assert_equal(100, bet.gain(draw))

  win = Game.new(home: 4, guest: 2)
  assert_equal(200, bet.gain(win))

  loose = Game.new(home: 0, guest: 3)
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