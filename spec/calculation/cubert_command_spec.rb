require 'spec_helper'

describe CubertCommand do

  it 'should return 2 and for 8' do
    expect(CubertCommand.new(Calculator.new(8)).execute).to eq(2)
  end
end