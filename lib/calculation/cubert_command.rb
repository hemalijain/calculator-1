#Calculates cubert
class CubertCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.cubert
  end
end