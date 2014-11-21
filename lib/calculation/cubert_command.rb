#Calculates cubert
require_relative 'command'
class CubertCommand < Command
  def execute_operation

    @calculator.cubert
  end
end