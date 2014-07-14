#Parses the input and passes input to calculator
class Parser
  attr_reader :operator,:operand
  def initialize router , input
    @router = router
    input = input.split(" ")
    @operator , @operand = input[0], input[1].to_f
  end

  def operation
    @router.result [@operator,@operand]
  end

end