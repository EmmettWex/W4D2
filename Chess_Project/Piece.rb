require "colorize"

class Piece

    attr_reader :pos, :board, :color

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def symbol
        #this will be overwritten by each piece subclass, likely unecessary to keep this class later
        "X"
    end

    def to_s
        self.to_s.colorize(@color)
    end

    def empty?
        #not sure, but could be...
        #a boolean indicating if the piece still exists or not
        #if empty? == false, keep on going, if empty? == true we switch self with NullPiece??
    end

    def pos=(new_pos)
        @board.move_piece(@pos, new_pos)
        @pos = new_pos
    end

    def move_into_check?(end_pos)
        #returns a boolean of if x player put y player into check
        #if true, in play you probably print "you're in check" or something
    end

    def valid_moves
        #tells us the various moves that any specific piece instance can do
        #returns an array of positions that it can move to
        #potential for #valid_move? to be whether or not that array includes the position the player selects
    end

end