#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'permutationEquation' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY p as parameter.
#

def permutationEquation(p)
  # Write your code here
  output_array = []
  1.upto(p.size) do |index|
    temp_index = p.find_index(index) + 1
    output_array.push(p.find_index(temp_index) + 1) 
  end
  output_array
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

p = gets.rstrip.split.map(&:to_i)

result = permutationEquation p

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
