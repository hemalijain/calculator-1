#Performs negation
require_relative 'command'
class NegCommand < Command
  def execute
    store
    @calculator.neg
  end
end