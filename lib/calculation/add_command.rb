require_relative 'command'
#Performs addition
class AddCommand < Command
  def execute
    store
    @calculator.+(@operand)
  end
end