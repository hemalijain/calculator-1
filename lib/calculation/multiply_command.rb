#Performs multiplication
class MultiplyCommand
  def initialize calculator, operand
    @calculator = calculator
    @operand = operand
  end
  def execute
    @calculator.*(@operand)
  end
end