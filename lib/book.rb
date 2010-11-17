class Book
  def initialize(file)
    open file, 'rb' do |f|
      @version = f.read(4).unpack('L').shift
      @records = f.read(4).unpack('L').shift
      #@entries = []
      #@records.each do
      #  # read empty
      #  empty = f.read(8)
        # read mover
      #  mover = f.read(8)
        # create board
      #  board = Board.new empty, mover
        # read book data
        #end
    end
  end

  attr_reader :version
  attr_reader :records
end
