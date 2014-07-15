#Performs Subtraction
class SubtractCommand < Command
  def execute
    store
    @calculator.-(@operand)
  end
end