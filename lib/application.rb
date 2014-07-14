require_relative 'calculation/input_output'
require_relative 'calculation/calculator'
require_relative 'calculation/parser'
require_relative 'calculation/router'

#Entry level to the Application - Calculator
class Application
  attr_reader :input_output
  def initialize
    @calculator = Calculator.new
    @router = Router.new @calculator
    @input_output = InputOutput.new
  end
  def run
      @input_output.start @router
  end
end
#Application.new.run