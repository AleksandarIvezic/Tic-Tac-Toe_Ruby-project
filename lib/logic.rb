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
     return '+---+---+---+ ' + "\n" +
     "| #{@board[0].sym} | #{@board[1].sym} | #{@board[2].sym} | " + "\n" +
     '+---+---+---+' + "\n" +
     "| #{@board[3].sym} | #{@board[4].sym} | #{@board[5].sym} | " + "\n" +
     '+---+---+---+' + "\n" +
     "| #{@board[6].sym} | #{@board[7].sym} | #{@board[8].sym} | " + "\n" +
     '+---+---+---+ '
  end
end

class Player
  WINNING = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_reader :name, :symbol, :choices

  def initialize(name, symbol)
    @name = name
    @choices = []
    @symbol = symbol
  end

  def check_winner
    WINNING.each { |win| return true if (win - @choices).empty? }
    false
  end

  def play(choice)
    @choices.push(choice)
  end
end

class Cell
  # rubocop: disable Metrics/ClassVars
  @@id = 0
  attr_accessor :sym, :chosen

  def initialize
    @@id += 1
    @chosen = false
    @sym = @@id.to_s
  end
  # rubocop:enable Metrics/ClassVars
end
