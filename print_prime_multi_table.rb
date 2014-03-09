require_relative 'lib/prime'
require_relative 'lib/prime_multi_table'

table = PrimeMultiTable.new(Prime.new(ARGV[0].to_i))
table.print_rows