#Performs multiplication
require_relative 'command'
class MultiplyCommand < Command
  def execute
    store
    @calculator.*(@operand)
  end
end
