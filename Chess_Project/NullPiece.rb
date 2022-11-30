require "singleton"

class NullPiece < Piece
    include Singleton

    attr_reader :symbol

    def initialize
        @symbol = :O
    end

    def moves
        #may need to include array that contains all indexes of the board
    end

end