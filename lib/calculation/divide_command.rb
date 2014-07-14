#Performs Division
class DivideCommand
  def initialize calculator, operand
    @calculator = calculator
    @operand = operand
  end
  def execute
    @calculator./(@operand)
  end
end