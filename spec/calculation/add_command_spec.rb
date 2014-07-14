require 'spec_helper'

describe AddCommand do

  it 'should add 2 and return 2' do
    expect(AddCommand.new(Calculator.new,2).execute).to eq(2)
  end
end