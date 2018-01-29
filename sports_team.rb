#Part B
class Team
  attr_accessor :team_name, :players, :coach_name, :points

  def initialize(input_team_name, input_players, input_coach_name, input_points)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
    @points = input_points
  end


  def add_player(name)
    @players << name
  end

  def check_player(name)
    for index in @players
      if index == name
        return name
      end
    end
    #return true if name in @players
  end
  

  def check_result(win)
    if win
      @points +=1
    end
  end


end
