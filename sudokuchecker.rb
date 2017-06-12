def validSolution(board)
  9.times do |i|
    if board[i].uniq.length != board[i].length
      return false
    end
    col_vals = []
    9.times do |j|
      col_vals << board[j][i]
    end
    if col_vals.uniq.length != col_vals.length
      return false
    end
  end
  board.each_with_index do |arr, index|
    if [0,3,6].include?(index)
      [0,3,6].each do |y|
        region = board[index][y, 3] + board[index + 1][y, 3] + board[index + 2][y, 3]
        if region.uniq.length != region.length
          return false
        end
      end
    end
  end
  return true
end
