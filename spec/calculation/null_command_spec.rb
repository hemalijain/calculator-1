require 'spec_helper'

describe NullCommand do

  it 'should return "Wrong Command" for invalid command' do
    expect(NullCommand.new(Calculator.new,OperationsHistory.new).execute).to eq("Wrong Command")
  end
end