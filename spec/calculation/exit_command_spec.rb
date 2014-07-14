require 'spec_helper'

describe ExitCommand do

  it 'should return 8 and for 2' do
    expect(Process).to receive(:exit)
    ExitCommand.new.execute
  end
end