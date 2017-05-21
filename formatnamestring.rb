def list names
  names.map!{|x| x[:name]}
  if names.length > 1
    last_name = names.pop
    sentence = names.join(', ') + ' & ' + last_name
  elsif names.length == 0
    sentence = ""
  else
    sentence = names.pop
  end
  return sentence
end
