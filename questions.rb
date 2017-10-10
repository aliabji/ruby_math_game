class Question
  attr_accessor :num1, :num2, :operator
    def initialize()
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @operator = ['plus', 'minus', 'times', 'divided by'].sample
    end

  end