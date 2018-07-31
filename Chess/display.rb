require_relative "cursor.rb"
require 'colorize'
require_relative 'board.rb'

class Display
attr_reader :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], @board)
  end

  def render
    @board.rows.each_with_index do |row, i|
      row.each_index do |j|
        if [i,j] == @cursor.cursor_pos
          print ' x '.colorize(:color => :green, :background => :light_yellow)
        elsif @board.rows[i][j].instance_of?(NullPiece)
          print ' _ '
        elsif @board.rows[i][j].instance_of?(Piece)
          print ' p '
        end
      end
      puts
    end
  end

  # def testing
  #   flag = true
  #   while flag
  #     i = @cursor.get_input
  #     if i == "stop"
  #       flag = false
  #     end
  #     render
  #   end
  # end
end
