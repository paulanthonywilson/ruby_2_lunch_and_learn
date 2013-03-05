def eager_times_table_for(n, upto: 12)
  (1..Float::INFINITY).select{|f| f % n == 0}.take(upto).force
end

def lazy_times_table_for(n, upto: 12)
  (1..Float::INFINITY).lazy.select{|f| f % n == 0}.take(upto).force
end

require 'timeout'
begin
  timeout(1) { puts eager_times_table_for 3, upto: 20 }
rescue Timeout::Error
  puts "\nTimed out!\n\n"
end

puts lazy_times_table_for 3, upto: 20

# However, don't just use lazy by default.
# For computations that resolve within acceptable polynomial time
# stick to eager as it's faster

require 'benchmark'

eager_result = Benchmark.measure {
  (1..10000000).select {|i| i % 3 == 0 || i % 5 == 0}.map{|n| n*2}.reduce(:+)
}
puts "Eager #{eager_result}"

lazy_result = Benchmark.measure {
  (1..10000000).lazy.select {|i| i % 3 == 0 || i % 5 == 0}.map{|n| n*2}.reduce(:+)
}
puts "Lazy: #{lazy_result}"
