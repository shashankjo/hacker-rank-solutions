#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
app = apples.map {|n| n+a}
oran = oranges.map {|n| n+b}
app_count, oran_count = 0, 0
app.each do |elem|
 if elem >= s && elem <= t
   app_count += 1
  end
end
oran.each do |elem|
 if elem >= s && elem <= t
   oran_count += 1
  end
end
p app_count
p oran_count
end

st = gets.rstrip.split

s = st[0].to_i

t = st[1].to_i

ab = gets.rstrip.split

a = ab[0].to_i

b = ab[1].to_i

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
