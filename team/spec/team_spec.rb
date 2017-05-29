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

  def test_add_player
    pre_add_length = (@team_1.players).length

    new_player = "Katy"
    @team_1.add_player(new_player)

    assert_equal(pre_add_length+1, (@team_1.players).length)
    assert_equal(true, @team_1.player_in_team?(new_player))
  end

  def test_player_in_team__true
    assert_equal(true, @team_2.player_in_team?("Alex"))
  end

  def test_player_in_team__false
    assert_equal(false, @team_2.player_in_team?("Bury"))
  end

  def test_change_points__win
    pre_win_points = @team_1.points
    @team_1.change_points_on_end_game(true)
    assert_equal(pre_win_points + 3, @team_1.points)
  end

  def test_change_points__loose
    expected = @team_1.points
    @team_1.change_points_on_end_game(false)
    assert_equal(expected, @team_1.points)
  end

end
