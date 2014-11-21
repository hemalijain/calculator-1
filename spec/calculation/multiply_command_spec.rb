require 'spec_helper'

describe MultiplyCommand do

  it 'should multiply 2 and return 4' do
    expect(MultiplyCommand.new(Calculator.new(2),OperationsHistory.new,2).execute).to eq(4)
  end
end