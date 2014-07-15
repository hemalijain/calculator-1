require 'spec_helper'

describe CubeCommand do

  it 'should return 8 and for 2' do
    expect(CubeCommand.new(Calculator.new(2),OperationsHistory.new).execute).to eq(8)
  end
end