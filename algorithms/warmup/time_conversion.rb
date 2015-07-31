##
# Staircase
# ----------------------------------------------------
# You are given time in AM/PM format. Convert this
# into a 24 hour format.
#
# Sample input:
# 07:05:45PM
#
# Sample output:
# 19:05:45
##

def convert_time(time_str)
  parsed_time = time_str.scan(/(\d+|\w+)/).flatten
  hours = parsed_time[0].to_i
  period = parsed_time.last.downcase

  if period == "am" && hours == 12
    hours = 0
  elsif period == "pm" && hours < 12
    hours = hours + 12
  end

  return "#{hours.to_s.rjust(2, '0')}:#{parsed_time[1]}:#{parsed_time[2]}"
end

print(convert_time(gets))
