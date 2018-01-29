require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test


  #Part B
  def test_get_sports_team
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    assert_equal("Paok",sports.team_name)
  end

  def test_get_players
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    assert_equal(player,sports.players())
  end

  def test_get_coach_name
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    assert_equal("Ilias", sports.coach_name())
  end

  def test_update_coach_name
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    sports.coach_name = "Michalis"
    assert_equal("Michalis",sports.coach_name())
  end

  def test_add_new_player
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    sports.add_player("Ria")
    assert_equal(4,sports.players.count)
  end

  def test_check_player_name_in_array
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    name_check = sports.check_player("Vasilis")
    assert_equal("Vasilis", name_check)
    #assert_equal(true, team.players.include?(name))
  end

  def test_team_win
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    sports.check_result(true)
    assert_equal(1, sports.points)
  end

  def test_team_lose
    player = ["Antonis","Giannis","Vasilis"]
    sports = Team.new("Paok", player, "Ilias", 0)
    sports.check_result(false)
    assert_equal(0, sports.points)
  end
end
