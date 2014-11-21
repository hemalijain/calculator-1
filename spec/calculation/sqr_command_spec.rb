require 'spec_helper'

describe SqrCommand do

  it 'should return 4 and for 2' do
    expect(SqrCommand.new(Calculator.new(2),OperationsHistory.new).execute).to eq(4)
  end
end