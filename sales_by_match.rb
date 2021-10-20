#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  pair = 0
  while (ar.size != 0)
    first = ar[0]
    pair += count_pair(ar, first)
    ar.delete(first)
  end
  pair
end

def count_pair(ar, element)
  count = 0
  ar.each do |sock|
    if sock == element
      count +=1
     end
  end
  (count / 2).to_i
end    

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
