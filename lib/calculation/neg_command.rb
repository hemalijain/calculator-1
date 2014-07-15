#Performs negation
require_relative 'command'
class NegCommand < Command
  def execute_operation

    @calculator.neg
  end
end