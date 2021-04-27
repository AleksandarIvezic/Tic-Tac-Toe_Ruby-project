class Game
  def initialize (player1,player2)
    @player1 = player1
    @player2 = player2
    @board = []
    9.times {@board.push(Cell.new)}
  end

  def turn (player,choice)
    player.play(choice)
    @board[choice-1].chosen = true
    @board[choice-1].sym = player.symbol
  end

  def choice_available? (choice)
   raise StandardError if @board[choice-1].chosen
  end

end

class Player
    WINNING = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]] 
    attr_reader :name , :symbol, :choices
    def initialize(name, symbol)
      @name = name
      @choices = []
      @symbol = symbol
    end

    def check_winner 
        WINNING.each {|win| return true if (win - @choices).empty? } 
        false
    end

    def play(choice)
      @choices.push(choice) 
    end
  end
  
class Cell
    @@id = 0
    attr_accessor :sym
    attr_accessor :chosen
    def initialize
        @@id += 1
        @chosen = false
        @sym = ''
    end
end