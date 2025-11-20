"""
Changes made

 * Renamed the game_number variable in PlayGame to game_name to avoid confusion
 * Realized that I can just get rid of that altogether
 * Refactored the PlayGames class to only take a specific game object and play it
 * Made sure all games had the same method names 'play_game' and 'get_results'
 * Wondered why there was a GoPlayer class I didn't even see before
 * Deleted GoPlayer
 * 

"""

class Poker
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play_game()
    puts "Players in the poker game:"
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @players[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play_game()
    puts "Players in the chess game:"
    @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play_game()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game)
    @game = game
  end

  def play()
    play_game
    puts @game.get_results
    
  end
end

new_poker = Poker.new(["alice", "bob", "chris", "dave"])
pg = PlayGames.new(new_poker)
pg.play()

puts

new_chess = Chess.new([["alice", "white"], ["bob", "black"]])
pg = PlayGames.new(new_chess)
pg.play()

puts

new_go = Go.new([["alice", "white"], ["bob", "black"]])
pg = PlayGames.new(new_go)
pg.play()