#the input and passes input to calculator
class Parser
  def initialize calculator,operations_history,input=nil
    @calculator = calculator
    input = input.split
    @operator,@operand = input[0], input[1].to_f
    @operations_history = operations_history
  end

  def result

    case @operator
      when 'add'
        AddCommand.new(@calculator,@operations_history,@operand)
      when 'subtract'
        SubtractCommand.new(@calculator,@operations_history,@operand)
      when 'multiply'
        MultiplyCommand.new(@calculator,@operations_history,@operand)
      when 'divide'
        DivideCommand.new(@calculator,@operations_history,@operand)
      when 'sqrt'
        SqrtCommand.new(@calculator,@operations_history)
      when 'sqr'
        SqrCommand.new(@calculator,@operations_history)
      when 'cubert'
        CubertCommand.new(@calculator,@operations_history)
      when 'cube'
        CubeCommand.new(@calculator,@operations_history)
      when 'neg'
        NegCommand.new(@calculator,@operations_history)
      when 'cancel'
        CancelCommand.new(@calculator,@operations_history)
      when 'exit'
        ExitCommand.new(@calculator,@operations_history)
      when 'repeat'
        RepeatCommand.new(@calculator,@operations_history,@operand)
      else
        NullCommand.new(@calculator,@operations_history)
    end
  end
end