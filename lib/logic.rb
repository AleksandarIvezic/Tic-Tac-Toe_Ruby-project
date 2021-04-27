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
  end

  def choice_available? (choice)
   
   raise StandardError if @board[choice-1].chosen
  end

end

class Player
    attr_reader :name
    def initialize(name, symbol)
      @name = name
      @choices = []
      @symbol = symbol
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