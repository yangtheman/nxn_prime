class PrimeMultiTable
    
  def initialize(prime)
    @prime = prime.numbers
    @cell_size = calculate_cell_size
  end
    
  def row_string(row_num)
    row_header(row_num) + row_body(row_num)
  end
  
  def print_rows
    (0).upto(@prime.size) do |row_num|
      puts row_string(row_num)
    end
  end

  private
  
  def row_header(row_num)
    row_num == 0 ? cell_string("") : cell_string(@prime[row_num-1].to_s)
  end
  
  def row_body(row_num)
    operand = row_num == 0 ? 1 : @prime[row_num-1]
    (@prime.map {|n| cell_string((operand*n).to_s)}).join("")
  end
    
  def cell_string(string)
    string + " "*(@cell_size-string.length)
  end
  
  def calculate_cell_size
    (@prime[-1]**2).to_s.size + 1
  end
    
end