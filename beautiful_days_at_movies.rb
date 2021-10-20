#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'beautifulDays' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER i
#  2. INTEGER j
#  3. INTEGER k
#

def beautifulDays(i, j, k)
  # Write your code here
  output_count = 0
  i.upto(j) do |day|
    output_count += 1 if (day - reverse_day(day)) % k == 0
  end
  output_count
end

def reverse_day(day)
  day.to_s.chars.reverse.join.to_i
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

i = first_multiple_input[0].to_i

j = first_multiple_input[1].to_i

k = first_multiple_input[2].to_i

result = beautifulDays i, j, k

fptr.write result
fptr.write "\n"

fptr.close()
