class Board
  def initialize(empty=0b11111111_11111111_11111111_11100111_11100111_11111111_11111111_11111111,
                 mover=0b00000000_00000000_00000000_00001000_00010000_00000000_00000000_00000000)
    @empties = empty.to_s(2).count('1')
    @empty, @mover = empty, mover
  end

  attr_reader :empties

  def to_s
    "{ :empty => #{@empty}, :mover => #{@mover} }"
  end
end
