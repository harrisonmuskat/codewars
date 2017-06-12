#lst is an array of arrays, where each array[0] is the numerator and array[1] is the denominator
def convertFracts(lst)
  denoms = []
  lst.each do |arr|
    denoms << arr[1]
  end
  lcm = denoms.reduce(1, :lcm)
  lst.each do |arr|
    arr[0] = arr[0] * (lcm/arr[1])
    arr[1] = lcm
  end
  lst
end
