require_relative 'board.rb'

module SlidingPiece

  def moves (start_pos)
    possible_moves = []

    if move_dirs == 'vertical/horizontal'


      i = 1
      until start_pos[1] + i > 7
        new_col = start_pos[1] + i
        possible_moves << [start_pos[0], new_col]
        i += 1
      end

      i = 1
      until start_pos[1] - i < 0
        new_col = start_pos[1] - i
        possible_moves << [start_pos[0], new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0
        new_row = start_pos[0] - i
        possible_moves << [new_row, start_pos[1]]
        i += 1
      end

      i = 1
      until start_pos[0] + i > 7
        new_row = start_pos[0] + i
        possible_moves << [new_row, start_pos[1]]
        i += 1
      end
    end

    if move_dirs == 'diagonal'
      i = 1
      until start_pos[0] + i > 7 || start_pos[1] + i > 7
        new_row = start_pos[0] + i
        new_col = start_pos[1] + i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0 || start_pos[1] - i < 0
        new_row = start_pos[0] - i
        new_col = start_pos[1] - i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] + i > 7 || start_pos[1] - i < 0
        new_row = start_pos[0] + i
        new_col = start_pos[1] - i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0 || start_pos[1] + i > 7
        new_row = start_pos[0] - i
        new_col = start_pos[1] + i
        possible_moves << [new_row, new_col]
        i += 1
      end

    end


    if move_dirs == 'both'


      i = 1
      until start_pos[1] + i > 7
        new_col = start_pos[1] + i
        possible_moves << [start_pos[0], new_col]
        i += 1
      end

      i = 1
      until start_pos[1] - i < 0
        new_col = start_pos[1] - i
        possible_moves << [start_pos[0], new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0
        new_row = start_pos[0] - i
        possible_moves << [new_row, start_pos[1]]
        i += 1
      end

      i = 1
      until start_pos[0] + i > 7
        new_row = start_pos[0] + i
        possible_moves << [new_row, start_pos[1]]
        i += 1
      end

      i = 1
      until start_pos[0] + i > 7 || start_pos[1] + i > 7
        new_row = start_pos[0] + i
        new_col = start_pos[1] + i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0 || start_pos[1] - i < 0
        new_row = start_pos[0] - i
        new_col = start_pos[1] - i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] + i > 7 || start_pos[1] - i < 0
        new_row = start_pos[0] + i
        new_col = start_pos[1] - i
        possible_moves << [new_row, new_col]
        i += 1
      end

      i = 1
      until start_pos[0] - i < 0 || start_pos[1] + i > 7
        new_row = start_pos[0] - i
        new_col = start_pos[1] + i
        possible_moves << [new_row, new_col]
        i += 1
      end

    end

    return possible_moves
    #returns array of possible moves
  end
end

module SteppingPiece
  def moves(start)
    new_arr = []

    move_dirs.each do |arr|
      x = start[0] + arr[0]
      y = start[1] + arr[1]
      new_arr << [x,y] if [x,y].all?{|val| val >=0 && val <8}
    end
    new_arr
  end
end

class Piece
  include SlidingPiece
  attr_accessor :pos

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
    # checks if pos is on board and if there is another piece of the same color there

  end

  def move_dirs
    return "vertical/horizontal"
  end

  def symbol
  end

  def move_into_check?(end_pos)
  end

end
