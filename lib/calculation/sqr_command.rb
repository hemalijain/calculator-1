#Calculates square
class SqrCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.sqr
  end
end