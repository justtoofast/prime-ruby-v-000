require 'benchmark'
require 'bigdecimal/math'

def prime?(number)
  if number <= 1
    false
  elsif number <= 3
    true
  else
    (2..number/2).none? do |x|
      number % x == 0
    end
  end
end

puts Benchmark.measure { BigMath.PI(10_000)
