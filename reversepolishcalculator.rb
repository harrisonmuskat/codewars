def calc(expr)
  pol_group = expr.match'([0-9]+ [0-9]+) [\+\-\/\*]'
  case pol_group
  when nil
    case expr
    when ""
      return 0
    else
      if expr.split(" ")[-1].match'\.'
        return expr.split(" ")[-1].to_f
      else
        return expr[-1].to_i
      end
    end
  else
    pol_array = pol_group.to_s.split(" ")
    result = eval("#{pol_array[0]}#{pol_array[2]}#{pol_array[1]}")
    expr.sub!(pol_group.to_s, result.to_s)
    if expr.match('([0-9]+ [0-9]+) [\+\-\/\*]').nil?
      return expr.to_i
    else
      calc(expr)
    end
  end
end
