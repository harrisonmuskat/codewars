def nb_year(p0, percent, aug, p)
  n = 0
  percent = percent/100.0
  while p0 < p
    n += 1
    p0 = p0 + (p0 * percent) + aug
    p0 = p0.floor
  end
  return n
end
