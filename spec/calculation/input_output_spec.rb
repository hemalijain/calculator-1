require 'spec_helper'

describe InputOutput do
  let(:io_operation) { InputOutput.new }

  context "Input Check" do
    it 'check whether input received in console' do
      expect(Kernel).to receive(:gets)
      io_operation.input
    end
  end


  context 'I/O check' do
    it 'should return 5 for add 5 with initial state 0' do
      allow(Kernel).to receive(:gets).and_return("add 5")
      expect(Kernel).to receive(:puts).with(5)
      io_operation.output(OperationsHistory.new,Calculator.new)
    end

    it 'should return 5 for add 5 with initial state 0' do
      allow(Kernel).to receive(:gets).and_return("kickass")
      expect(Kernel).to receive(:puts).with("Wrong command")
      io_operation.output(OperationsHistory.new,Calculator.new)
    end

  end

end