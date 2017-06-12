#checks a string to see if parentheses are correct. 
def valid_parentheses(string)
  paren_check = 0
  string.split("").each do |char|
    if char == "("
      paren_check += 1
    elsif char == ")"
      paren_check -= 1
    end
    if paren_check < 0
      return false
    end
  end
  if paren_check != 0
    return false
  end
  true
end
