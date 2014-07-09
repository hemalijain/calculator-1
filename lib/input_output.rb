#Manges the Input / Output
class InputOutput

  def initialize input
    @input = input
    @calculator = Calculator.new
  end

  def parse
    @input = @input.split(" ")
    [@input[0],@input[1].to_i]
  end
  def result
    return @calculator.+(@input[1]) if @input[0]='add'
    return @calculator.-(@input[1]) if @input[0]='subtract'
    return @calculator.*(@input[1]) if @input[0]='multiply'
    return @calculator./(@input[1]) if @input[0]='divide'
    return @calculator.reset(@input[1]) if @input[0]='cancel'
  end

end