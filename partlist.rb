#returns all parts of arr as strings
def partlist(arr)
  index = 1
  new_arr = []
  while index < arr.length
    part_arr = []
    part_arr << arr[0, index].join(" ")
    part_arr << arr[index, arr.length].join(" ")
    new_arr << part_arr
    index += 1
  end
  new_arr
end
