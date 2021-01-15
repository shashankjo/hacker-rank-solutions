#!/bin/ruby

require 'json'
require 'stringio'

# Complete the breakingRecords function below.
def breakingRecords(scores)
 min = max = scores[0]
 max_break = min_break = 0
 scores.each do |score|
   if score > max
     max = score
     max_break += 1
   end
   if score < min
     min = score
     min_break += 1
   end
 end
 result = []
 result << [max_break, min_break]
 result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

scores = gets.rstrip.split(' ').map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()