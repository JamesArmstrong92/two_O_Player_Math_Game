# player class

class Player 

# Allows us to read life and name 
  attr_reader :life, :name

# Initializing
# Setting name to name and life to 3
  def initialize name
    @life = 3
    @name = name
  end

# If player gets incorrect answer, life will decrease by one
  def incorrect
    @life -= 1
  end

# If players lives get to 0, the game will end
  def end
    @life == 0
  end
end
