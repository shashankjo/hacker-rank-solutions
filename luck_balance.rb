#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'luckBalance' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER k
#  2. 2D_INTEGER_ARRAY contests
#

def luckBalance(k, contests)
  # Write your code here
  luck_important_contest = []
  luck_non_important_contest = []
  contests.each do |contest|
    luck_important_contest.push(contest[0]) if contest[1] == 1
    luck_non_important_contest.push(contest[0]) if contest[1] == 0
  end
  
  return (luck_non_important_contest.sum - luck_important_contest.sum ) if k == 0
  return (luck_important_contest.sum + luck_non_important_contest.sum ) if k == contests.size
  loses = k
  loses = luck_important_contest.size if k > luck_important_contest.size

  luck_important_contest = luck_important_contest.sort.reverse!
  luck_important_contest[0..loses-1].sum - luck_important_contest[loses..(luck_important_contest.size - 1)].sum + luck_non_important_contest.sum
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

contests = Array.new(n)

n.times do |i|
    contests[i] = gets.rstrip.split.map(&:to_i)
end

result = luckBalance k, contests

fptr.write result
fptr.write "\n"

fptr.close()
