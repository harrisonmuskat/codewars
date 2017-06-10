class String
  def toJadenCase
    words = self.split(' ').map do |word|
      word.capitalize
    end
    words.join(' ')
  end
end
