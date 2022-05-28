require "pry"

def time_of_day(input_minutes)
  if input_minutes < 0
    input_minutes = 1440 - (input_minutes.abs % 1440)
  elsif input_minutes > 1440
    input_minutes = input_minutes % 1440
  end

  hours = input_minutes / 60
  minutes = input_minutes - (hours * 60)

  "#{format(hours)}:#{format(minutes)}"
end

def format(digit)
  digit.to_s.rjust(2, '0')
end