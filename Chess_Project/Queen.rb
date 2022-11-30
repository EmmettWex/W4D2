require_relative "piece"
require_relative "Slideable"

class Queen < Piece
    include Slideable

    def symbol
        "Qn"
    end

    private

    def move_dirs
        [LINEAR, DIAGONAL]
    end


end