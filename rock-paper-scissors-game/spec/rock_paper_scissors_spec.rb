require 'rspec'
require 'rock_paper_scissors'

describe "User can play rock paper scissors with computer" do
  it "has user win for all user winning combos, keeps correct score" do
    game = RockPaperScissors.new
    expect(game.play("scissors", "paper")).to eq("You Win!")
    expect(game.play("paper", "rock")).to eq("You Win!")
    expect(game.play("rock", "scissors")).to eq("You Win!")
    expect(game.score).to eq("You won:3, you lost:0")
  end

end