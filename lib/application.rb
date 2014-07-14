require_relative 'calculation/input_output'
require_relative 'calculation/calculator'
require_relative 'calculation/parser'
require_relative 'calculation/operations_history'
require_relative 'calculation/add_command'
require_relative 'calculation/subtract_command'
require_relative 'calculation/multiply_command'
require_relative 'calculation/divide_command'
require_relative 'calculation/neg_command'
require_relative 'calculation/sqr_command'
require_relative 'calculation/sqrt_command'
require_relative 'calculation/cube_command'
require_relative 'calculation/cubert_command'
require_relative 'calculation/repeat_command'
require_relative 'calculation/null_command'
require_relative 'calculation/cancel_command'
require_relative 'calculation/exit_command'



#Entry level to the Application - Calculator
class Application
  attr_reader :input_output
  def initialize
    @calculator = Calculator.new
    @operations_history = OperationsHistory.new
    @input_output = InputOutput.new
  end
  def run
      @input_output.start @operations_history,@calculator
  end
end
#Application.new.run