#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
  arr = arr.sort
  mini = arr.first
  max = arr.last
  min_sum = arr.take(4).sum
  max_sum = arr.drop(1).sum
  output = []
  output << min_sum
  output << max_sum
  puts output.join(" ")
end
arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr