##
# Plus Minus
# ----------------------------------------------------
# You're given an array containing integer values. You
# need to print the fraction of count of positive
# numbers, negative numbers and zeroes to the total
# numbers. Print the value of the fractions correct to
# 3 decimal places.
#
# Sample input:
# 6
# -4 3 -9 0 4 1
#
# Sample output:
# 0.500
# 0.333
# 0.167
##

total = gets.to_i
nums = gets.split(" ")

positives = 0
negatives = 0
zeros = 0

def format_float(x)
    return sprintf("%f", x)
end

nums.each do |num|
    num = num.to_i

    if num == 0
        zeros = zeros + 1
    elsif num < 0
        negatives = negatives + 1
    elsif num > 0
        positives = positives + 1
    end
end

puts(format_float(positives/total.to_f))
puts(format_float(negatives/total.to_f))
puts(format_float(zeros/total.to_f))
