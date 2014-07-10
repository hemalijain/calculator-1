#Parses the input and passes input to calculator
class Parser
  def initialize
    @router = Router.new
  end

  def parse input
    input = input.split(" ")
    @operator , @operand = input[0], input[1].to_f
  end

  def operation input
    parsed_input = parse input
    @router.result parsed_input
  end

end