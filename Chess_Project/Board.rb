require_relative "Piece"
require_relative "NullPiece"

class Board

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @piece = Piece.new
        @null = NullPiece.new
        fill_board
    end

    def move_piece(start_pos, end_pos)
        raise "There is no piece here" if @grid[start_pos] == @null.null
        raise "The piece cannot move there" if @grid[end_pos] == @piece.pce
    end

    def [](pos)
        row, col = pos
        self[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        self[row][col] = piece
    end

    def fill_board
        @grid.each_with_index do |row, idx|
            row.each_with_index do |ele, idx2|
                if idx == 0 || idx == 1 || idx == 6 || idx == 7
                    @grid[idx][idx2] = @piece.pce
                else
                    @grid[idx][idx2] = @null.null
                end
            end
        end
    end

end