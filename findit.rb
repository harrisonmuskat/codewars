#returns value that occurs an odd number of times in an array
def find_it(seq)
  frequency = Hash.new(0)
  seq.each do |x|
    frequency[x] += 1
  end
  frequency.values.each do |val|
    if val % 2 != 0
      return frequency.key(val)
    end
  end
end
