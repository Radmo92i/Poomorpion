class Show
	attr_accessor :board

	def show_board(board)
		

		puts "Joueur 1 = x / Joueur 2 = o" 
		puts " "
		puts "----------------"
		puts "| #{board.array_of_boardcase[0].id_case} | #{board.array_of_boardcase[1].id_case} | #{board.array_of_boardcase[2].id_case} |" 
		puts "----------------"
		puts "| #{board.array_of_boardcase[3].id_case} | #{board.array_of_boardcase[4].id_case} | #{board.array_of_boardcase[5].id_case} |"
		puts "----------------"
		puts "| #{board.array_of_boardcase[6].id_case} | #{board.array_of_boardcase[7].id_case} | #{board.array_of_boardcase[8].id_case} |"
		puts "----------------"
	end
end
    