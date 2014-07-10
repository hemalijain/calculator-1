#Manages the Input / Output
class InputOutput
  def initialize
    @calculator = Calculator.new
    @parser= Parser.new(@calculator)
  end
  def input
    @parser.input( Kernel.gets )
  end


  def output
    Kernel.puts @parser.operation
    end

end