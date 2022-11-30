require "singleton"

class NullPiece
    include Singleton

    attr_reader :symbol

    def initialize
        @symbol = :O
    end

end