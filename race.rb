def race(v1, v2, g)
  if v1 >= v2
    return nil
  end
  time = g/(v2 - v1).to_f
  hours = time.floor
  minutes = ((time - hours) * 60).floor
  seconds = (((time-hours) * 60 - minutes) * 60).floor
  [hours, minutes, seconds]
end
