class Question
  def initializer
    @num1 = rand(0...21)
    @num2 = rand(0...21)
  end
   
  def nxt_question
    "What does #{num1} plus #{num2} equal?"
  end
end