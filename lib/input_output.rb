#Manages the Input / Output and passes input to calculator
class InputOutput

  def initialize
    @calculator = Calculator.new
  end

  def input
     Kernel.gets
  end

  def parse input
    @input = input.split(" ")
    [@input[0], @input[1].to_i]
  end

  def result
    return @calculator.+(@input[1]) if @input[0]='add'
    return @calculator.-(@input[1]) if @input[0]='subtract'
    return @calculator.*(@input[1]) if @input[0]='multiply'
    return @calculator./(@input[1]) if @input[0]='divide'
    return @calculator.reset(@input[1]) if @input[0]='cancel'
  end

  def exit_method
    Process.exit
  end
end
