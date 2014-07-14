require 'spec_helper'

describe SqrtCommand do

  it 'should return 4 and for 2' do
    expect(SqrtCommand.new(Calculator.new(4)).execute).to eq(2)
  end
end