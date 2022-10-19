require "./questions.rb"


class Game

  attr_accessor :player1, :player2, :order

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def start_game
    puts "Welcome to the Math Game! Get ready players..."
    new_round()
  end

  def new_round
    newQuestions = Questions.new
    puts "----- NEW TURN -----"
    p1 = newQuestions.generate_question()
    p2 = newQuestions.generate_question()

    if p1 == 1
      @player1 -= 1
    end
    if p2 == 1
      @player2 -= 1
    end
    check_scores()
  end


  def check_scores
    if @player1 != 0 && @player2 != 0
      puts "P1: #{@player1}/3 vs. P2: #{@player2}/3"
      new_round()
    end
    if @player1 == 0 || @player2 == 0
      game_ends()
    end
  end

  def game_ends
    if @player1 == 0 && @player2 == 0
      puts '----- GAME OVER -----'
      puts "It was a dead-tie, play again!"
      puts "Good bye!"
      exit(0)
    end
    if @player1 == 0
      puts '----- GAME OVER -----'
      puts "Player 2 won with a score of #{@player2}/3"
      puts "Good bye!"
      exit(0)
    end
    puts '----- GAME OVER -----'
    puts "Player 1 won with a score of #{@player1}/3"
    puts "Good bye!"
    exit(0)
  end
end


bazinga = Game.new
bazinga.start_game()
