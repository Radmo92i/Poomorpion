require_relative 'boardcase'

class Board
    attr_accessor :array_of_boardcase

    def initialize
        @case1 = BoardCase.new("A1",'.')
        @case2 = BoardCase.new("A2",'.')
        @case3 = BoardCase.new("A3",'.')
        @case4 = BoardCase.new("B1",'.')
        @case5 = BoardCase.new("B2",'.')
        @case6 = BoardCase.new("B3",'.')
        @case7 = BoardCase.new("C1",'.')
        @case8 = BoardCase.new("C2",'.')
        @case9 = BoardCase.new("C3",'.')
        @array_of_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
    end

    def play_turn(board,current_player)

        input_ko = true

        while input_ko
            print "#{current_player.player_name}, ton jeton est le '#{current_player.player_token}'"
            case_to_play = gets.chomp.upcase

            case case_to_play
            when "A1"
                if board.array_of_boardcase[0].token = '.'
                    board.array_of_boardcase[0].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case A1 deja occupée"
                end
            when "A2"
                if board.array_of_boardcase[1].token == '.'
                    board.array_of_boardcase[1].token = current_player.player_token
                    input_ko = false
                else
                    puts "Case A2 deja occupée"
                end
            when "A3"
                if board.array_of_boardcase[2].token = '.'
                    board.array_of_boardcase[2].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case A3 deja occupée"
                end
            when "B1"
                if board.array_of_boardcase[3].token = '.'
                    board.array_of_boardcase[3].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case B1 deja occupée"
                end
            when "B2"
                if board.array_of_boardcase[4].token = '.'
                    board.array_of_boardcase[4].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case B2 deja occupée"
                end
            when "B3"
                if board.array_of_boardcase[5].token = '.'
                    board.array_of_boardcase[5].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case B3 deja occupée"
                end
            when "C1"
                if board.array_of_boardcase[6].token = '.'
                    board.array_of_boardcase[6].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case C1 deja occupée"
                end
            when "C2"
                if board.array_of_boardcase[7].token = '.'
                    board.array_of_boardcase[7].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case C2 deja occupée"
                end
            when "C3"
                if board.array_of_boardcase[8].token = '.'
                    board.array_of_boardcase[8].token == current_player.player_token
                    input_ko = false
                else
                    puts "Case C3 deja occupée"
                end
            else
                puts "erreur de case"
            end
        end
    end

    def victory(board)

        #Horizontalement
        if board.array_of_boardcase[0].tok == "X" && board.array_of_boardcase[1].tok == "X" && board.array_of_boardcase[2].tok == "X"
            return false
        end
        if board.array_of_boardcase[0].tok == "O" && board.array_of_boardcase[].tok == "O" && board.array_of_boardcase[2].tok == "O"
            return false
        end
        if board.array_of_boardcase[3].tok == "X" && board.array_of_boardcase[4].tok == "X" && board.array_of_boardcase[5].tok == "X"
            return false
        end
        if board.array_of_boardcase[3].tok == "O" && board.array_of_boardcase[4].tok == "O" && board.array_of_boardcase[5].tok == "O"
            return false
        end
        if board.array_of_boardcase[6].tok == "X" && board.array_of_boardcase[7].tok == "X" && board.array_of_boardcase[8].tok == "X"
            return false
        end
        if board.array_of_boardcase[6].tok == "O" && board.array_of_boardcase[7].tok == "O" && board.array_of_boardcase[8].tok == "O"
            return false
        end

        #Verticalement
        if board.array_of_boardcase[0].tok == "X" && board.array_of_boardcase[3].tok == "X" && board.array_of_boardcase[6].tok == "X"
            return false
        end
        if board.array_of_boardcase[0].tok == "O" && board.array_of_boardcase[3].tok == "O" && board.array_of_boardcase[6].tok == "O"
            return false
        end
        if board.array_of_boardcase[1].tok == "X" && board.array_of_boardcase[4].tok == "X" && board.array_of_boardcase[7].tok == "X"
            return false
        end
        if board.array_of_boardcase[1].tok == "O" && board.array_of_boardcase[4].tok == "O" && board.array_of_boardcase[7].tok == "O"
            return false
        end
        if board.array_of_boardcase[2].tok == "X" && board.array_of_boardcase[5].tok == "X" && board.array_of_boardcase[8].tok == "X"
            return false
        end
        if board.array_of_boardcase[2].tok == "O" && board.array_of_boardcase[5].tok == "O" && board.array_of_boardcase[8].tok == "O"
            return false
        end

        #Diagonale
        if board.array_of_boardcase[0].tok == "X" && board.array_of_boardcase[4].tok == "X" && board.array_of_boardcase[8].tok == "X"
            return false
        end
        if board.array_of_boardcase[0].tok == "O" && board.array_of_boardcase[4].tok == "O" && board.array_of_boardcase[8].tok == "O"
            return false
        end
        if board.array_of_boardcase[2].tok == "X" && board.array_of_boardcase[4].tok == "X" && board.array_of_boardcase[6].tok == "X"
            return false
        end
        if board.array_of_boardcase[2].tok == "O" && board.array_of_boardcase[4].tok == "O" && board.array_of_boardcase[6].tok == "O"
            return false
        end
    end






end
        