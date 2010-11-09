class Book
  def initialize(file)
    open file, 'rb' do |f|
      @version = f.read(4).unpack('L').shift
      @records = f.read(4).unpack('L').shift
    end
  end

  attr_accessor :version
  attr_accessor :records
end
