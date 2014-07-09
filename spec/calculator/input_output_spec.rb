require 'spec_helper'

describe InputOutput do

  context "parsing" do

    it 'should be [+,5] for "Add 5"' do
      input = InputOutput.new("add 5")
      expect(input.parse).to eq(['add', 5])
    end

  end

  context "I/O" do
    it "should return output as " do

    end

  end

end