module Slideable

    LINEAR = [
        [0,1] # move to the right [0]
        [0,-1] # move to the left [1]
        [1,0] # move down [2]
        [-1,0] # move up [3]
    ]

    DIAGONAL = [
        [1,1] # down and right [0]
        [1,-1] # down and left [1]
        [-1,-1] # up and left [2]
        [-1,1] # up and right [3]
    ]

    def moves
        #store all possible moves here
        poss_moves = []

        move_dirs.each do |dir|
            dir.each do |delta|
                poss_moves + grow_unblocked_moves_in_direction(delta[0], delta[1])
            end
        end

        poss_moves
    end

    private

    def move_dirs
        raise "You forgot to write the directions for your piece"
    end

    def grow_unblocked_moves_in_direction(dx, dy)
        pot_pos = []

        loop_forever = true

        until !loop_forever
            
            new_pos = [@pos[0] + dx, @pos[1] + dy]

            #go until end of board
            if new_pos[0] > 7 || new_pos[0] < 0 || new_pos[1] > 7 || new_pos[1] < 0
                break
            end

            #go until enemy piece
            if @board[pot_pos].color != @color && @board[pot_pos] != @null
                pot_pos << new_pos
                break
            end

            #go up until ally piece
            if @board[pot_pos].color == @color
                break
            end

            pot_pos << new_pos
        end
        pot_pos
    end

end