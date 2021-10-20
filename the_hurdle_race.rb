#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hurdleRace function below.
def hurdleRace(k, height)
  max = height.max
  return (max - k) if max > k
  return 0 if k > max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

height = gets.rstrip.split(' ').map(&:to_i)

result = hurdleRace k, height

fptr.write result
fptr.write "\n"

fptr.close()
