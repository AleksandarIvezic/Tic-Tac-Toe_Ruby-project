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