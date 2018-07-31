class Knight < Piece
  include SteppingPiece
  
  def symbol
    :k
  end

  protected

  def move_dirs
    [[-1,-2],[1,-2],[-2,-1],[2,-1],
    [-2,1],[2,1],[-1,2],[1,2]]
  end

end
