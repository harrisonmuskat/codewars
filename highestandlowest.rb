def high_and_low(numbers)
  num_array = numbers.split(' ')
  num_array.map! {|num| num.to_i}
  sorted_array = num_array.sort
  low = sorted_array.first
  high = sorted_array.last
  return "#{high} #{low}"
end
