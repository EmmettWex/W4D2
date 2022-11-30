

class Knight < Piece

    @@pot_pos_shift = [[1,2],[-1,2],[1,-2],[-1,-2],[2,1],[-2,1],[2,-1],[-2,-1]]

    def valid_moves
        valid_pos = @@potential_moves.select do |move| 
            if valid?(move)
                
        end
    end

    def moves(potential_shift, cur_pos)
        #valid move references the board instance, which lets us access the position of everything else
        pot_pos = []
        potential_shift.each do |shift|
            new_pos = cur_pos + shift
            if valid_move.include?(new_pos)
                pot_pos << new_pos
            end
        end
        pot_pos
    end

    def valid_moves
        #tells us the various moves that any specific piece instance can do
        #returns an array of positions that it can move to
        #potential for #valid_move? to be whether or not that array includes the position the player selects

        valid = [all the nul pieces, all the enemy pieces] #this is the idea, not final OBVIOUSLY
    end
end

