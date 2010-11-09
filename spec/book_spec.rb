require 'book'

describe Book do
  describe "loading" do
    before(:each) do
      @book = Book.new "spec/data/JA_s12.book"
    end

    it "should read version" do
      @book.version.should == 1
    end

    it "should read number of records" do
      @book.records.should == 91
    end
  end
end
