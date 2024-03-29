require_relative "Piece"
require_relative "Stepable"

class Knight < Piece
    include Stepable

    def symbol
        "Kn"
    end

    private

    def move_diffs
        [
        [1,2],[-1,2],   
        [1,-2],[-1,-2], 
        [2,1],[-2,1],   
        [2,-1],[-2,-1]
    ]
    end
end

