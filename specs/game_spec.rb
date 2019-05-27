require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game")

class GameTest < MiniTest::Test

  def test_game__draw
    game = Game.new("rock", "rock")
    assert_equal("Draw!", game.play())
  end

  def test_game__rock_beats_scissors
    game = Game.new("rock", "scissors")
    assert_equal("Rock wins!", game.play())
  end

  def test_game__rock_loses_paper
    game = Game.new("rock", "paper")
    assert_equal("Paper wins!", game.play())
  end

  def test_game__paper_beats_rock
    game = Game.new("paper", "rock")
    assert_equal("Paper wins!", game.play())
  end

  def test_game__paper_loses_scissors
    game = Game.new("paper", "scissors")
    assert_equal("Scissors wins!", game.play())
  end

  def test_game__scissors_beats_paper
    game = Game.new("scissors", "paper")
    assert_equal("Scissors wins!", game.play())
  end

  def test_game__scissors_loses_rock
    game = Game.new("scissors", "rock")
    assert_equal("Rock wins!", game.play())
  end

end
