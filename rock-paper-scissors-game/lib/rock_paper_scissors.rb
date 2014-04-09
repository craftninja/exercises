class RockPaperScissors
  def initialize
    @you_won = 0
    @you_lost = 0
  end

  def play (user_throw, computer_throw = rand(1..3))
    if computer_throw.class == Fixnum
      computer_throw = "rock" if computer_throw == 1
      computer_throw = "paper" if computer_throw == 2
      computer_throw = "scissors" if computer_throw == 3
    end

    if (computer_throw == "rock" && user_throw == "scissors") || (computer_throw == "scissors" && user_throw == "paper") || (computer_throw == "paper" && user_throw == "rock")
      winner = "You Lose!"
      @you_lost += 1
    else
      winner = "You Win!"
      @you_won += 1
    end
    winner
  end

  def score
    "You won:#{@you_won}, you lost:#{@you_lost}"
  end

end