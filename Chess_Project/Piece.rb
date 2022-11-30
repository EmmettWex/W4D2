class Piece

    attr_reader :symbol, :pos, :board, :color

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = :X
    end

    def to_s
        self.to_s.colorize(@color)
    end

    def empty?

    end

    def pos=(new_pos)
        @board.move_piece(@pos, new_pos)
        @pos = new_pos
    end

    def Symbol

    end


    def move_into_check?(end_pos)

    end

end