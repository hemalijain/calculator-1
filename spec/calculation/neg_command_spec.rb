require 'spec_helper'

describe NegCommand do

  it 'should return -2 for 2' do
    expect(NegCommand.new(Calculator.new(2)).execute).to eq(-2)
  end
end