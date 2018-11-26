require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    assert_equal("Celtic", team.name)
  end

  def test_get_team_players
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    assert_equal(["Bob","Steve","Dave"],team.players)
  end

  def test_get_team_coach
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    assert_equal("Albert",team.coach)
  end

  def test_update_team_coach
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    team.coach = "Joker"
    assert_equal("Joker", team.coach)
  end

  def test_add_player
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    assert_equal(["Bob","Steve","Dave", "Alice"], team.add_player("Alice"))
  end

  def test_check_for_player
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    assert_equal(true, team.check_for_player("Bob"))
  end

  def test_points__win
    team = Team.new("Celtic", ["Bob","Steve","Dave"], "Albert")
    result = team.update_points("win")
    assert_equal(3, result)
  end

end
