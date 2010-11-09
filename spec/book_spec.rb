require 'book'

describe Book do
  it "should read version" do
    book = Book.new "spec/data/JA_s12.book"
    book.version.should == 1
  end
end
