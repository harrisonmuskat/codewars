def DNA_strand(dna)
  complement = ""
  characters = dna.split('')
  characters.each do |char|
    if char == "A"
      complement << "T"
    elsif char == "T"
      complement << "A"
    elsif char == "C"
      complement << "G"
    else
      complement << "C"
    end
  end
  return complement
end
