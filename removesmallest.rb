def remove_smallest(numbers)
  if numbers.length == 1
    return []
  else
    modified_numbers = numbers
    index = modified_numbers.index(numbers.min)
    modified_numbers.delete_at(index) unless index.nil?
    numbers = modified_numbers
  end
end
