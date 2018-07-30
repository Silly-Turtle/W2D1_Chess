class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8){ Array.new(8)}
    @sentinel = NullPiece.new
  end

  def [](pos)
    x,y = pos
    rows[x][y]
  end

  def []=(pos, val)
    x,y = pos
    rows[x][y] = val
  end 

  private
  attr_reader :sentinel
end
