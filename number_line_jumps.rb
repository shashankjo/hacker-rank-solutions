#!/bin/ruby

require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
  return_value = "NO"
  for i in (0..10000)
     kangaroo_1 = x1 + (i * v1)
     kangaroo_2 = x2 + (i * v2)
     if kangaroo_1 == kangaroo_2
       return_value= "YES"
       break
       else next
    end
  end
  return return_value
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"

fptr.close()

