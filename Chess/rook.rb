class Rook < Piece
  include SlidingPiece
  
  def symbol
    :R
  end

  protected

  def move_dirs
    return 'vertical/horizontal'
  end

end
