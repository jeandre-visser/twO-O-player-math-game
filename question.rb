class Question
  def initialize
    # Generate two random numbers
    @num1 = rand(1...21)
    @num2 = rand(1...21)
  end

  attr_reader :num1, :num2
   
  def nxt_question
    "What does #{num1} plus #{num2} equal?"
  end

  def correct
    num1 + num2
  end
end


