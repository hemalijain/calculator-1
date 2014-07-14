#Performs Subtraction
class SubtractCommand
  def initialize calculator, operand
    @calculator = calculator
    @operand = operand
  end
  def execute
    @calculator.-(@operand)
  end
end