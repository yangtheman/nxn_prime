require_relative '../lib/prime'
require_relative '../lib/prime_multi_table'
require 'rspec'

describe PrimeMultiTable do
  
  before do
    @table = PrimeMultiTable.new(Prime.new(2))
  end
  
  describe "#row_string" do
    it "should print prime numbers if row_num is 0" do
      @table.row_string(0).should == "  2 3 "
    end

    it "should print product of first prime number and each prime number if row_num is 1" do
      @table.row_string(1).should == "2 4 6 "
    end 
    
    it "should print product of second prime number and each prime number if row_num is 2" do
      @table.row_string(2).should == "3 6 9 "
    end       
  end
  
  describe "#print_rows" do
    it "should print all rows, one by one" do
      STDOUT.should_receive(:puts).with("  2 3 ")
      STDOUT.should_receive(:puts).with("2 4 6 ")
      STDOUT.should_receive(:puts).with("3 6 9 ")
    
      @table.print_rows
    end
  end
  
end