require_relative "piece"
require_relative "Slideable"

class Rook < Piece
    include Slideable
    
    def symbol
        "Rk"
    end

    private

    def move_dirs
        [LINEAR]
    end

end