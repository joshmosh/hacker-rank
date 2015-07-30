##
# Staircase
# ----------------------------------------------------
# Your teacher has given you the task to draw the
# structure of a staircase. Being an expert programmer,
# you decided to make a program for the same. You are
# given the height of the staircase.
#
# Sample input:
# 6
#
# Sample output:
#      #
#     ##
#    ###
#   ####
#  #####
# ######
##

total_stairs = gets.to_i
height = 0

def draw_stair(height, total)
  stair = ""

  total.times do |i|
    if i < height
      stair = stair + "#"
    else
      stair = "\s" + stair
    end
  end

  puts(stair)
end

while height < total_stairs do
  draw_stair((height + 1), total_stairs)

  height = height + 1
end
