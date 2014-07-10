#Parses the input and passes input to calculator
class Parser
  def initialize calculator,input=""
    @input = input
    @calculator = calculator
  end
  def input input
    @input=input
  end

  def parse
    @input = @input.split(" ")
    @input = [@input[0], @input[1].to_i]
  end


  def exit_method
    Process.exit
  end

  def operation
    parse
    result
  end

private
  def result
    return @calculator.+(@input[1]) if @input[0]='add'
    return @calculator.-(@input[1]) if @input[0]='subtract'
    return @calculator.*(@input[1]) if @input[0]='multiply'
    return @calculator./(@input[1]) if @input[0]='divide'
    return @calculator.reset(@input[1]) if @input[0]='cancel'
    return exit_method if @input[0] = 'exit'
    return "Wrong command"
  end
end