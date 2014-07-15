#Performs Division
require_relative 'command'
class DivideCommand < Command
  def execute
    store
    @calculator./(@operand)
  end
end