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





end
