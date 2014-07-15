#Calculates cubert
require_relative 'command'
class CubertCommand < Command
  def execute
    store
    @calculator.cubert
  end
end