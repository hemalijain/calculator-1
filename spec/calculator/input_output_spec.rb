require 'spec_helper'

describe InputOutput do
  let(:io_operation) { InputOutput.new }

  context "parsing" do

    it 'should be [add,5] for "Add 5"' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      input = io_operation.input
      expect(io_operation.parse(input)).to eq(["add", 5])
    end
  end

  context "Input Check" do
    it 'check whether input received in console' do
      expect(Kernel).to receive(:gets)
      io_operation.input
    end
  end

  context 'Exit Check' do
    it 'should check if Process receives exit' do
      expect(Process).to receive(:exit)
      io_operation.exit_method
    end
  end

end