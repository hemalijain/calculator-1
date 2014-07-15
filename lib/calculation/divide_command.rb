#Performs Division
require_relative 'command'
class DivideCommand < Command
  def execute_operation

    @calculator./(@operand)
  end
end