require_relative 'piece.rb'

class Queen < Piece
  include SlidingPiece

  def symbol
    :Q
  end

  protected

  def move_dirs
    return "both"
    #returns string direction ex. "vertical/horizontal", "diagonal", "both"
  end

end
