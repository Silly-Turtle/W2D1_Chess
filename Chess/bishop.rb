require_relative 'piece.rb'

class Bishop < Piece
  include  SlidingPiece
  def symbol
    :B
  end

  protected

  def move_dirs
    return 'diagonal'
  end

end
