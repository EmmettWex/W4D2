require_relative "Piece"

class Board

    def initialize
        @grid = Array.new(8) { Array.new(8)}
        @piece = Piece.new
    end

    def move_piece(start_pos, end_pos)
        raise "There is no piece here" if @grid[start_pos] == null
    end

    def [](pos)
        @grid[pos[0]][pos[1]]
    end

end