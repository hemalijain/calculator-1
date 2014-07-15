#Resets the value to zero
require_relative 'command'
class CancelCommand < Command
  def execute
    @calculator.cancel
  end
end