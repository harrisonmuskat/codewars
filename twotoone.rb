def longest(a1, a2)
  a3 = a1.split("") + a2.split("")
  return a3.sort.uniq!.join("")
end
