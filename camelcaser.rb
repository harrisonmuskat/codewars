def to_camel_case(str)
  if str.length == 0
    return str
  elsif str.match('^[A-Z]')
    return str.split(/-|_/).map(&:capitalize).join('')
  else
    str = str.split(/-|_/).map(&:capitalize).join('')
    str[0] = str[0].downcase
    return str
  end
end
