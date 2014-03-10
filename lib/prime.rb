class Prime
  
  attr_reader :numbers
  
  def initialize(count=10)
    # Rather than raising an exception, default to 10 if count is less than 1
    @count = count < 1 ? 10 : count
    @numbers = [2]
    find_n_primes
  end
  
  def find_n_primes
    while @numbers.size < @count
      @numbers << find_next_prime
    end
  end
  
  private
  
  def find_next_prime
    next_num = @numbers[-1]
    while !is_prime?(next_num)
      next_num += 1
    end
    next_num
  end
  
  def is_prime?(num)
    @numbers.each do |prime|
      return false if num % prime == 0
    end
    true
  end
  
end