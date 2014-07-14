require 'spec_helper'

describe SubtractCommand do

  it 'should subtract 2 and return -2' do
    expect(SubtractCommand.new(Calculator.new,2).execute).to eq(-2)
  end
end