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
