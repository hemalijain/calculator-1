#Calculates cube
require_relative 'command'
class CubeCommand < Command
  def execute_operation

    @calculator.cube
  end
end