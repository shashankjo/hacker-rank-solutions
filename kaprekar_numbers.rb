#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'kaprekarNumbers' function below.
#
# The function accepts following parameters:
#  1. INTEGER p
#  2. INTEGER q
#

def kaprekarNumbers(p, q)
  # Write your code here
  output = []
  (p..q).each do |num|
    next if num == 2 || num == 3
    left, right = split_number(num ** 2)
    output.push(num) if (left + right == num)
  end
  if (output.size > 0) 
    puts output.join(" ") 
  else puts "INVALID RANGE"
  end
end

def split_number(square)
  split_array = square.to_s.split('')
  left ||= split_array.take(split_array.size / 2).join.to_i
  right ||= split_array.drop(split_array.size / 2).join.to_i
  [left, right]
end

p = gets.strip.to_i

q = gets.strip.to_i

kaprekarNumbers p, q
