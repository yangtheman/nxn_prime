require_relative 'lib/prime'
require_relative 'lib/prime_multi_table'

num = ARGV[0].to_i

if num > 0
  prime_table = PrimeMultiTable.new(Prime.new(num.to_i))
else
  prime_table = PrimeMultiTable.new(Prime.new)
end

prime_table.print_rows
