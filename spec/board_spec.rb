require 'board'

describe Board do
  it "should initialize with empty and mover" do
    board = Board.new(0, 0)
    board.empties.should == 0
  end

  it "should initialize with values" do
    board = Board.new(18446743970226896895, 34628698112)
    board.empties.should == 58
  end

  it "should initialize to start position" do
    board = Board.new
    board.empties.should == 60
    empty = 0b11111111_11111111_11111111_11100111_11100111_11111111_11111111_11111111
    mover = 0b00000000_00000000_00000000_00001000_00010000_00000000_00000000_00000000
    board.to_s.should == "{ :empty => #{empty}, :mover => #{mover} }"
  end
end
