#!/bin/ruby

require 'json'
require 'stringio'

# Complete the utopianTree function below.
def utopianTree(n)
  return 1 if n == 0
  height = 1
  for i in 1..n
    if i%2 == 1
      height = 2 * height
    else height += 1
    end
  end
  height
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = utopianTree n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
