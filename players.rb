module MathGame
  class Players
    attr_reader :lives

    def initialize
      @lives = 3
    end

    def minus_lives
      @lives -= 1
      pp "You have #{lives} lives left"
    end
  end
end


