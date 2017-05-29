require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < Minitest::Test

  def setup
    team_1_players = ["Fred", "Jill", "Mike", "Onion"]
    @team_1 = Team.new("Awesome Team", team_1_players, "Beaf")
    team_2_players = ["Alex", "Chris", "Bill", "Scrap"]
    @team_2 = Team.new("Super Team", team_2_players, "Duck")
  end

  def test_get_name
    assert_equal("Awesome Team", @team_1.name)
  end

  def test_get_players
    expected = ["Alex", "Chris", "Bill", "Scrap"]
    assert_equal(expected, @team_2.players)
  end

  def test_get_coach
    assert_equal("Beaf", @team_1.coach)
  end

  def test_set_coach_name
    @team_2.coach = "Bacon"
    assert_equal("Bacon", @team_2.coach)
  end

end
