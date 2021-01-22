#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
 initial_size=ar.size
 max=ar.max
 ar.delete_if {|n| n== max}
 final_size= ar.size
 candles=initial_size-final_size
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthdayCakeCandles ar

fptr.write result
fptr.write "\n"

fptr.close()