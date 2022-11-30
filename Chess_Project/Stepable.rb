module Stepable

    def moves
        poss_moves = []

        move_diffs.each do |delta|
            new_pos = [@pos[0] + delta[0], @pos[1] + delta[1]]
            poss_moves << new_pos if valid_move?(new_pos)
        end

        poss_moves
    end    

    private

    def move_diffs
        raise "You forgot to write the directions for your piece"
    end

    def valid_move?(pot_pos)

        #end of board
        if pot_pos[0] > 7 || pot_pos[0] < 0 || pot_pos[1] > 7 || pot_pos[1] < 0
            return false
        end

        #at enemy piece
        if @board[pot_pos].color != @color && @board[pot_pos] != @null
            return true
        end

        #at ally piece
        if @board[pot_pos].color == @color
            return false
        end

        true
    end



end