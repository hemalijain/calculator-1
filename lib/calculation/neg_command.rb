#Performs negation
class NegCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.neg
  end
end