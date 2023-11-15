class Question

  attr_accessor :num1
  attr_accessor :num2
  attr_accessor :sum

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @sum = @num1 + @num2
  end

end