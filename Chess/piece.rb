class Piece
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
  end

  def pos=(val)
  end

  def symbol
  end

  def move_into_check?(end_pos)
  end

end

class Rook < Piece
  def symbol
    :rook
  end

  protected

  def move_dirs
  end

end

class NullPiece < Piece
  def initialize(pos)
    @pos = pos 
  end
end
