##
# Library Fine
# ----------------------------------------------------
# The Head Librarian at a library wants you to make a
# program that calculates the fine for returning the
# book after the return date. You are given the actual
# and the expected return dates. Calculate the fine as
# follows:
#
# If the book is returned on or before the expected
# return date, no fine will be charged, in other words
# fine is 0.
#
# If the book is returned in the same month as the
# expected return date, Fine = 15 Hackos × Number of
# late days
#
# If the book is not returned in the same month but in
# the same year as the expected return date,
# Fine = 500 Hackos × Number of late months
#
# If the book is not returned in the same year, the
# fine is fixed at 10000 Hackos.
#
# Sample input:
# 9 6 2015
# 6 6 2015
#
# Sample output:
# 45
##

def calculate_late_fee(actual, expected)
  year_diff = actual[2] - expected[2]
  month_diff = actual[1] - expected[1]
  day_diff = actual[0] - expected[0]

  if actual[2] > expected[2]
    return 10000
  elsif actual[1] > expected[1] && year_diff >= 0
    return (actual[1] - expected[1]) * 500
  elsif actual[0] > expected[0] && year_diff >= 0 && month_diff >= 0
    return (actual[0] - expected[0]) * 15
  else
    return 0
  end
end

actual = gets.split(" ").map { |x| x.to_i }
expected = gets.split(" ").map { |x| x.to_i }

p calculate_late_fee(actual, expected)
