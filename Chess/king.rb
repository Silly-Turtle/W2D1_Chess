class King < Piece
  include SteppingPiece
  
  def symbol
    :K
  end

  protected

  def move_dirs
    [[-1,-1],[-1,0],[-1,1],[0,-1],
    [0,1],[1, 1],[1,0],[1,-1]]
  end

end
