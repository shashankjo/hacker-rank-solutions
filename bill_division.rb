#!/bin/ruby

require 'json'
require 'stringio'

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b)
sum=bill.inject(:+)
togther_sum= sum - bill[k]
each_share = togther_sum / 2

if each_share == b
  puts "Bon Appetit"
  else puts b - each_share
  end
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

bonAppetit bill, k, b
