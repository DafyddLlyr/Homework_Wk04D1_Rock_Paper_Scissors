class Game

  def initialize(first, second)
    @first = first
    @second = second
  end

  def play()
    return "Draw!" if @first == @second

    if @first == "rock"
      return "Rock wins!" if @second == "scissors"
      return "Paper wins!"

    elsif @first == "paper"
      return "Paper wins!" if @second == "rock"
      return "Scissors wins!"

    elsif @first == "scissors"
      return "Scissors wins!" if @second == "paper"
      return "Rock wins!"
      
    end
  end

end
