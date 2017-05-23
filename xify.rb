def xify(string_of_numbers)
  array_output = []
  array_of_numbers = string_of_numbers.split("")
  array_of_numbers.each_with_index do |num, index|
    remainder = num.to_i % 2
    if (index == 0 && remainder != 0)
      array_output << "#{num}x"
    elsif (index == array_of_numbers.length - 1 && remainder != 0)
      array_output << "x#{num}"
    elsif (remainder != 0)
      array_output << "x#{num}x"
    else
      array_output << num
    end
  end
  array_output.join("").gsub(/xx/, "x")
end
