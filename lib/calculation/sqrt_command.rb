#Calculates square root
class SqrtCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.sqrt
  end
end