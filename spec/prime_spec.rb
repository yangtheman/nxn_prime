require_relative '../lib/prime'
require 'rspec'

describe Prime do
  
  it { should respond_to(:numbers) }
  
  describe ".new" do
    it "should call find_n_primes method with 10 as argument as default" do
      Prime.any_instance.should_receive(:find_n_primes).with(10)
      Prime.new
    end

    it "should call find_n_primes method with 10 as argument if given argument is less than 1" do
      Prime.any_instance.should_receive(:find_n_primes).with(10)
      Prime.new(0)
    end      
    
    it "should call find_n_primes method with given count argument" do
      Prime.any_instance.should_receive(:find_n_primes).with(20)
      Prime.new(20)      
    end
    
    it "should initiate numbers instance variable with [2]" do
      Prime.any_instance.should_receive(:find_n_primes)
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
  end
  
end