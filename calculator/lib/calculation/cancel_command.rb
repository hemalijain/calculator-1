#Resets the value to zero
require_relative 'command'
class CancelCommand < Command

  def execute_operation
    @calculator.cancel
  end

  def store

  end
end