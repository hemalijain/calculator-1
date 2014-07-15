#Calculates cube
require_relative 'command'
class CubeCommand < Command
  def execute
    store
    @calculator.cube
  end
end