require 'spec_helper'

describe DivideCommand do

  it 'should divide by 2 and return 1' do
    expect(SubtractCommand.new(Calculator.new(2),OperationsHistory.new,1).execute).to eq(1)
  end
end