#!/bin/ruby

require 'json'
require 'stringio'

# Complete the migratoryBirds function below.
def migratoryBirds(arr)
 hash = Hash.new
 hash.default = 0
 arr.each do |element|
    hash[element] += 1
 end
 hash = hash.sort_by { |key,value| - value}
 return hash.first[0]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()