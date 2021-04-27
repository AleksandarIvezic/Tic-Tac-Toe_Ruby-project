class Player
    def initialize(name)
      @name = name
      @choices = []
    end
  
    def play(choice); end
  end
  
  class Cell
    @@id = 0
  
    def initialize
      @@id += 1
      @chosen = false
      @sym = ''
    end
  end