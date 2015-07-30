##
# A Very Big Sum
# ----------------------------------------------------
# You are given an array of integers of size N. You
# need to print the sum of the elements of the array.
#
# Sample input:
# 5
# 1000000001 1000000002 1000000003 1000000004 1000000005
#
# Sample output:
# 5000000015
##

sum = 0

t = gets.to_i
nums = gets.strip.split(" ")

nums.each do |num|
    sum = sum + num.to_i
end

puts sum
