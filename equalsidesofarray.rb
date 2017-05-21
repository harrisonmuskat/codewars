def find_even_index(arr)
  arr.each_with_index do |value, index|
    left_sum = arr[0..index].reduce(0, :+)
    right_sum = arr[index..arr.length].reduce(0, :+)
    if left_sum == right_sum
      return index
    end
  end
  return -1
end
