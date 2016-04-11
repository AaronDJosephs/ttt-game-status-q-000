# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #first column
  [1, 4, 7], #second column
  [2, 5, 8], #third column
  [0, 4, 8], #topleft diagonal
  [2, 4, 6] #topright diagonal
 ]

def won?(board)
  taken_positions = 0
  board.each do |position|
    if position_taken?(board, position)
      taken_positions += 1
    end
  end
  if taken_positions == 0
    return false
  else
    WIN_COMBINATIONS.each do |combination|
      if board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
        return combination
      end
    end
  end
end
