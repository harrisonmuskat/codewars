def duplicate_count(text)
  duplicates = text.downcase.chars.group_by{|i| i}
  print duplicates
  i = 0
  duplicates.each do |key, value|
    if value.length > 1
      i+=1
    end
  end
  return i
end
