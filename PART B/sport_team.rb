class Team

  attr_accessor :name, :players, :coach, :result, :points

  def initialize(name, players, coach, result, points)
    @name = name
    @players = players
    @coach = coach
    @result = result
    @points = points
  end

  def add_player(player_name)
    players.push(player_name)
  end

  def check_for_player(player_name)
    players.include?(player_name)
  end

  def score(result)
    win = 3
    lose = 0
    if result == "win"
      result.push(result)
    elsif result == "lose"
      result.push(result)
    end
  end
end
