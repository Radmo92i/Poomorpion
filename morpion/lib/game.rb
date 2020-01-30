require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
    attr_accessor :current_player, :status, :array_of_player, :board

    def initialize
        @player_1 = Player.new
        @player_2 = Player.new
        @array_of_player = [@player_1,@player_2]
        @status = 'on going'

        if @player_1.player_token == @player_2.player_token
            puts "Attention, j'ai changé vos jetons car ils etaient identiques"
            if @player_1.player_token == 'X'
                @player_2.player_token = 'O'
            elsif @player_1.player_token == 'O'
                @player_2.player_token = 'X'
            end
        end
        @player_1.show_state
        @player_2.show_state

        @board = Board.new
        Show.new.show_board(@board)
    end

    def turn
        i = 0
        while @status == 'on going' && i<9
            @current_player = @array_of_player[i%2]
            @board.play_turn(@board, @current_player)

            Show.new.show_board(@board)

            if @board.victory(@board)
                @status = 'winner'
                break
            end
            i += 1
        end
    end

    def new_round
        print "Encore une partie (O/N) ?"
        choice = gets.chomp.upcase
        while choice != "O" || choice != "N"
            if choice == "O"
            @board = Board.new
            @status = "on going"
            puts '-' * 20
            p "C'est reparti pour un tour"
            Show.new.show_board(@board)
            break
            elsif choice == "N"
                puts "A la prochaine"
                exit
            end

            print "Choix erroné. Voulez-vous en refaire une autre (O/N) ?"
            choice = gets.chomp.upcase
        end
        puts choice
        p @status
    end

    def game_end
        if @status == 'on going'
            puts "Match nul"
        elsif @status == 'winner'
            puts "Bravo #{@current_player.player_name}, t'as gagné"
        end
    end
end
