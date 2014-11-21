require 'spec_helper'

describe RepeatCommand do
it 'should return 5 for 2 consecutive operations (add 2, add 3) ' do
       operations_history = OperationsHistory.new
       calculator = Calculator.new
       operations_history.store(AddCommand.new(calculator,OperationsHistory.new,2))
       operations_history.store(AddCommand.new(calculator,OperationsHistory.new,3))
       expect((RepeatCommand.new(calculator,operations_history,2)).execute).to eq(5)
end
end