class Team

  attr_accessor :name, :players, :coach, :result

  def initialize(name, players, coach, result)
    @name = name
    @players = players
    @coach = coach
    @result = result
  end

  def add_player(player_name)
    players.push(player_name)
  end

  def check_for_player(player_name)
    players.include?(player_name)
  end

  def score(result)
    if result == "win"
      return result
    elsif result == "lose"
      return result
    end
  end
end
