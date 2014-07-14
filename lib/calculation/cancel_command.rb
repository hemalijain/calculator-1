#Resets the value to zero
class CancelCommand
  def initialize calculator
    @calculator = calculator
  end
  def execute
    @calculator.cancel
  end
end