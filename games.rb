module MathGame
  class Games

    def initialize
      @players = []
      @players.push(Players.new)
      @players.push(Players.new)
      @current_player = 0
    end

    def start_game
      pp "Welcome to the two player game"
      loop do
        puts "Player #{@current_player}"
        questions = MathGame::Question_Answer.new.question?
        pp questions[0]
        answer = gets.to_i

        if(answer != questions[1])
          @players[@current_player].minus_lives
          if @current_player == @players.length - 1
            @current_player = 0
          else
            @current_player = 1
          end
        else
          if @current_player == @players.length - 1
            @current_player = 0
          else
            @current_player = 1
          end
        end
        if end_game?
          pp "Player #{@current_player} has won"
          break
        end
      end
    end



    def end_game?
      @players.any? { |player| player.lives == 0 }
    end

  end
end
