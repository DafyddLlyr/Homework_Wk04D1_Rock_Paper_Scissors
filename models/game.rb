class Game

  def initialize(first, second)
    @first = first
    @second = second
  end

  def play()
    return "Draw!" if @first == @second

    if @first == "rock" && @second == "scissors"
      result = "Rock wins!"
    elsif @first == "rock" && @second == "paper"
      result = "Paper wins!"

    elsif @first == "paper" && @second == "rock"
      result = "Paper wins!"
    elsif @first == "paper" && @second == "scissors"
      result = "Scissors wins!"

    elsif @first == "scissors" && @second == "paper"
      result = "Scissors wins!"
    elsif @first == "scissors" && @second == "rock"
      result = "Rock wins!"

    end
    return result
  end

end
