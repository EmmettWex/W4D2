require_relative "Piece"
require_relative "NullPiece"

class Board

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @piece = Piece.new
        @null = NullPiece.instance
        fill_board
    end

    def move_piece(start_pos, end_pos)
        raise "There is no piece here" if self[start_pos] == @null.symbol
        raise "The piece cannot move there" if self[end_pos] == @piece.symbol
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @grid[row][col] = piece
    end

    def fill_board
        @grid.each_with_index do |row, idx|
            row.each_with_index do |ele, idx2|
                if idx == 0 || idx == 1 ||
                    piece = Piece.new(:white, @board, [idx,idx2])
                    @grid[idx][idx2] = piece.symbol #remove .symbol later
                elsif idx == 6 || idx == 7
                    piece = Piece.new(:black, @board, [idx,idx2])
                    @grid[idx][idx2] = piece.symbol #remove .symbol later
                else
                    @grid[idx][idx2] = @null.symbol #remove .symbol later
                end
            end
        end
    end

end