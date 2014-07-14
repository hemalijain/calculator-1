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
        command = AddCommand.new(@calculator,@operand)
        @operations_history.store command
      when 'subtract'
        command = SubtractCommand.new(@calculator,@operand)
        @operations_history.store command
      when 'multiply'
        command = MultiplyCommand.new(@calculator,@operand)
        @operations_history.store command
      when 'divide'
        command = DivideCommand.new(@calculator,@operand)
        @operations_history.store command
      when 'sqrt'
        command = SqrtCommand.new(@calculator)
        @operations_history.store command
      when 'sqr'
        command = SqrCommand.new(@calculator)
        @operations_history.store command
      when 'cubert'
        command = CubertCommand.new(@calculator)
        @operations_history.store command
      when 'cube'
        command = CubeCommand.new(@calculator)
        @operations_history.store command
      when 'neg'
        command = NegCommand.new(@calculator)
        @operations_history.store command
      when 'cancel'
        command = CancelCommand.new(@calculator)
        @operations_history.store command
      when 'exit'
        command = ExitCommand.new
      when 'repeat'
        #command = RepeatCommand.new(@calculator)
      else
        command = NullCommand.new
    end
    command.execute
  end
end