require_relative "Piece"
require_relative "Stepable"

class King < Piece
    include Stepable

    def symbol
        "KING"
    end

    private

    def move_diffs
        [
            [0,1],[0,-1],[1,0],[-1,0],
            [1,1],[1,-1],[-1,1],[-1,-1]
        ]
    end
end
