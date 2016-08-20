require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/white_pawn.rb")
require_relative("lib/black_pawn.rb")


black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

puts "Valid Rook movements"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 5) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"

puts "Invalid Rook Movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) =="no"
p black_rook_left.can_move?(2, 5) =="no"
p white_rook_right.can_move?(3, 5) =="no"
p white_rook_right.can_move?(5, 6) =="no"





black_king = King.new(5, 4, "black")
# white_king_right = King.new(8, 1, "white")

puts "Valid King movements"

p black_king.can_move?(4, 3) == "yes"
p black_king.can_move?(4, 4) == "yes"
p black_king.can_move?(4, 5) == "yes"
p black_king.can_move?(5, 3) == "yes"
p black_king.can_move?(6, 3) == "yes"
p black_king.can_move?(6, 4) == "yes"
p black_king.can_move?(6, 5) == "yes"


puts "Invalid King Movements"
puts "----------------------"

p black_king.can_move?(3, 2) == "no"
p black_king.can_move?(4, 6) == "no"
p black_king.can_move?(7, 5) == "no"
p black_king.can_move?(1, 8) == "no"
p black_king.can_move?(3, 5) == "no"
p black_king.can_move?(1, 3) == "no"
p black_king.can_move?(6, 1) == "no"


black_knight = Knight.new(4, 5, "black")
# white_knight = Knight.new(5, 4, "black")
puts "Valid Knight movements"
puts "----------------------"

p black_knight.can_move?(2, 4) == "yes"
p black_knight.can_move?(2, 6) == "yes"
p black_knight.can_move?(3, 3) == "yes"
p black_knight.can_move?(3, 7) == "yes"
p black_knight.can_move?(5, 3) == "yes"
p black_knight.can_move?(5, 7) == "yes"
p black_knight.can_move?(6, 4) == "yes"
p black_knight.can_move?(6, 6) == "yes"

puts "Invalid Knight Movements"
puts "----------------------"

p black_knight.can_move?(2, 2) == "no"
p black_knight.can_move?(1, 6) == "no"
p black_knight.can_move?(6, 5) == "no"
p black_knight.can_move?(4, 5) == "no"
p black_knight.can_move?(8, 1) == "no"
p black_knight.can_move?(7, 8) == "no"
p black_knight.can_move?(1, 5) == "no"


black_bishop = Bishop.new(5, 4, "black")
# white_bishop = bishop.new(5, 4, "black")
puts "Valid bishop movements"
puts "----------------------"

p black_bishop.can_move?(6, 5) == "yes"
p black_bishop.can_move?(7, 6) == "yes"
p black_bishop.can_move?(8, 7) == "yes"
p black_bishop.can_move?(4, 5) == "yes"
p black_bishop.can_move?(3, 6) == "yes"
p black_bishop.can_move?(2, 7) == "yes"
p black_bishop.can_move?(4, 3) == "yes"
p black_bishop.can_move?(8, 1) == "yes"

puts "Invalid bishop Movements"
puts "----------------------"

p black_bishop.can_move?(2, 2) == "no"
p black_bishop.can_move?(1, 6) == "no"
p black_bishop.can_move?(6, 8) == "no"
p black_bishop.can_move?(4, 7) == "no"
p black_bishop.can_move?(8, 2) == "no"
p black_bishop.can_move?(1, 7) == "no"
p black_bishop.can_move?(1, 5) == "no"



black_queen = Queen.new(5, 4, "black")
# white_queen = queen.new(5, 4, "black")
puts "Valid queen movements"
puts "----------------------"

p black_queen.can_move?(6, 5) == "yes"
p black_queen.can_move?(7, 6) == "yes"
p black_queen.can_move?(8, 7) == "yes"
p black_queen.can_move?(4, 5) == "yes"
p black_queen.can_move?(3, 6) == "yes"
p black_queen.can_move?(4, 4) == "yes"
p black_queen.can_move?(8, 4) == "yes"
p black_queen.can_move?(5, 7) == "yes"
p black_queen.can_move?(5, 1) == "yes"

puts "Invalid queen Movements"
puts "----------------------"

p black_queen.can_move?(2, 2) == "no"
p black_queen.can_move?(1, 6) == "no"
p black_queen.can_move?(6, 8) == "no"
p black_queen.can_move?(4, 7) == "no"
p black_queen.can_move?(8, 2) == "no"
p black_queen.can_move?(1, 7) == "no"
p black_queen.can_move?(6, 6) == "no"
p black_queen.can_move?(3, 8) == "no"
p black_queen.can_move?(7, 3) == "no"
p black_queen.can_move?(6, 1) == "no"
p black_queen.can_move?(2, 2) == "no"


black_pawn = Black_Pawn.new(5, 7, "black")
white_pawn = White_Pawn.new(5, 2, "white")

puts "Valid pawn movements"
puts "----------------------"

p black_pawn.can_move?(5, 6, true) == "yes"
p black_pawn.can_move?(5, 5, true) == "yes"



p white_pawn.can_move?(5, 3, true) == "yes"
p white_pawn.can_move?(5, 4, true) == "yes"






puts "Invalid pawn Movements"
puts "----------------------"

p black_pawn.can_move?(5, 1, false) == "no"
p black_pawn.can_move?(5, 5, false) == "no"
p black_pawn.can_move?(5, 8, false) == "no"
p black_pawn.can_move?(6, 8, false) == "no"
p black_pawn.can_move?(4, 7, false) == "no"
p black_pawn.can_move?(8, 2, false) == "no"
p white_pawn.can_move?(1, 7, false) == "no"
p white_pawn.can_move?(6, 6, false) == "no"
p white_pawn.can_move?(3, 8, false) == "no"
p white_pawn.can_move?(7, 3, false) == "no"
p white_pawn.can_move?(6, 1, false) == "no"








