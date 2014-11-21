#Performs multiplication
require_relative 'command'
class MultiplyCommand < Command
  def execute_operation

    @calculator.*(@operand)
  end
end
