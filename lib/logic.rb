require_relative 'player'
require_relative 'cell'
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = []
    9.times { @board.push(Cell.new) }
  end

  def turn(player, choice)
    player.play(choice)
    @board[choice - 1].chosen = true
    @board[choice - 1].sym = player.symbol
  end

  def choice_available?(choice)
    raise StandardError if @board[choice - 1].chosen
  end

  def display_board
     '+---+---+---+ ' + "\n" +
     "| #{@board[0].sym} | #{@board[1].sym} | #{@board[2].sym} | " + "\n" +
     '+---+---+---+' + "\n" +
     "| #{@board[3].sym} | #{@board[4].sym} | #{@board[5].sym} | " + "\n" +
     '+---+---+---+' + "\n" +
     "| #{@board[6].sym} | #{@board[7].sym} | #{@board[8].sym} | " + "\n" +
     '+---+---+---+ '
  end
end




