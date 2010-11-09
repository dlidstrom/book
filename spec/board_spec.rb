require 'board'

describe Board do
  it "should initialize with empty and mover" do
    board = Board.new(0, 0)
    board.empties.should == 0
  end
end
