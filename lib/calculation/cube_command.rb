#Calculates cube
class CubeCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.cube
  end
end