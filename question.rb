class Question
  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
  end

  attr_reader :num1, :num2
   
  def nxt_question
    "What does #{num1} plus #{num2} equal?"
  end
end

qs1 = Question.new
puts qs1.nxt_question
