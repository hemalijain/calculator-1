require_relative 'command'
#Performs addition
class AddCommand < Command
  def execute_operation

    @calculator.+(@operand)
  end
end