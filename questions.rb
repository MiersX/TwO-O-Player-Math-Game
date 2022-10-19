class Questions

  attr_accessor :turn, :player1, :player2
   
  def initialize
    @turn = 1
  end

  def generate_question
    x = rand(1..10)
    y = rand(1..10)

    if @turn % 2 == 0
      puts "Player 2, what is #{x} + #{y}?"
    else 
      puts "Player 1, what is #{x} + #{y}?"
    end

    user_answer = $stdin.gets.chomp.to_i

    if user_answer ==  x + y
      @turn += 1
      puts "Correct!"
      return 0
    end
    if user_answer !=  x + y 
      @turn += 1
      puts "Incorrect!"
      return 1
    end
  end
end
