class Book
  
  def initialize(file)
    open file, 'rb' do |f|
      @version = f.read(4).unpack('L').shift
    end
  end
  
  def version
    @version
  end
end
