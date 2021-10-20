#!/bin/ruby

require 'json'
require 'stringio'

# Complete the toys function below.
def toys(w)
  count=0
  while w.size != 0
    min = w.min
    temp_array = w.select {|n| n <= min + 4 }
    count += 1
    w = w - temp_array
  end
  return count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

w = gets.rstrip.split(' ').map(&:to_i)

result = toys w

fptr.write result
fptr.write "\n"

fptr.close()
