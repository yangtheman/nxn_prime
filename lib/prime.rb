class Prime
  
  attr_reader :numbers
  
  def initialize(count=10)
    count = 10 if count < 1
    @numbers = [2]
    find_n_primes(count)
  end
  
  def find_n_primes(count)
    while @numbers.size < count
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