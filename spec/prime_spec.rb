require_relative '../lib/prime'
require 'rspec'

describe Prime do
  
  it { should respond_to(:numbers) }
  
  describe ".new" do
    it "should call find_n_primes" do
      Prime.any_instance.should_receive(:find_n_primes)
      Prime.new
    end
    
    it "should initiate numbers instance variable with [2]" do
      Prime.any_instance.stub(:find_n_primes)
      prime = Prime.new
      prime.numbers.should == [2]
    end
  end
  
  describe "#find_n_primes" do
    it "should find first two prime numbers if given argument is two" do
      prime = Prime.new(2)
      prime.numbers.should == [2, 3]
    end
    
    it "should find first five prime numbers if given argument is five" do
      prime = Prime.new(5)
      prime.numbers.should == [2, 3, 5, 7, 11]
    end
    
    it "should find first ten prime numbers if class was instantiated with no argument" do
      prime = Prime.new
      prime.numbers.size.should == 10
    end
  end
  
end