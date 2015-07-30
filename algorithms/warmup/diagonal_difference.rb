##
# Diagonal Difference
# ----------------------------------------------------
# You are given a square matrix of size N×N. Calculate
# the absolute difference of the sums across the two
# main diagonals.
#
# Sample input:
# 3
# 11 2 4
# 4 5 6
# 10 8 -12
#
# Sample output:
# 15
##

times = gets.to_i
sum1 = 0
sum2 = 0
x = 0;
y = times - 1

(0...times).each do |row|
    nums = gets.split(" ")

    sum1 = (sum1 + nums[x].to_i)
    sum2 = (sum2 + nums[y].to_i)

    x = x + 1
    y = y - 1
end

puts((sum1 - sum2).abs)
