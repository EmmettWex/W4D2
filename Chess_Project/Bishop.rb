require_relative "piece"
require_relative "Slideable"

class Bishop < Piece
    include Slideable
    
    def symbol
        "B"
    end

    private

    def move_dirs
        [DIAGONAL]
    end

end