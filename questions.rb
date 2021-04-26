class Question 
 
# Allows us to read and write numbers 1 and 2 and total 

  attr_reader :number1, :number2

# Initializing
# Setting numbers 1 and 2 to a random number between 1 and 100
# Setting total to the sum of numbers 1 and 2

  def self.number1 
    @number1 = rand(1..100)
    
  end

  def self.number2
  @number2 = rand(1..100)
  end

  # Function that takes in the value and sets it to the sum 

  def self.output value
    value.to_i == (@number1 + @number2)
  end
end
