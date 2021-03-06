require_relative 'piece.rb'
require_relative 'null_piece.rb'
require_relative 'knight.rb'
require_relative 'bishop.rb'
require_relative 'rook.rb'
require_relative 'pawn.rb'
require_relative 'queen.rb'
require_relative 'king.rb'

require 'byebug'

class Board
  attr_accessor :rows

  def initialize
    @rows = Array.new(8){ Array.new(8)}
    @white_rook = Piece.new(:white, @rows, [0,4] )
    # @sentinel = NullPiece.new()
    populate
  end

  def [](pos)
    x,y = pos
    @rows[x][y]
  end

  def []=(pos, val)

    x,y = pos
    @rows[x][y] = val
  end

  def populate
    #populate with actual figures

    #populate the rest of the board with NullPiece figures
    @rows.each_index do |row|
      @rows[row].each_index do |tile|
        @rows[row][tile] = NullPiece.new([row, tile])
      end
    end
    add_piece(@white_rook, [0, 4])
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos] == NullPiece
      raise "Invalid start position"
    elsif valid_pos?(end_pos) == false
      raise "Invalid end position"
    end

    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece

  end

  def valid_pos?(pos)
    pos[0] < 8  && pos[1] < 8 && pos[0] >= 0 && pos[1] >= 0
  end

  def add_piece(piece, pos)
    self[pos] = piece
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

  private
  attr_reader :sentinel

end
