require 'spec_helper'

describe Parser do


  context "parsing" do

    it 'should be [add,5] for "Add 5"' do
      expect(Parser.new(Calculator.new, "add 5").parse).to eq(["add", 5])
    end
  end
  context 'Result calculation' do
    it 'should return 5 for add 5 with initial state 0' do
      expect(Parser.new(Calculator.new, "add 5").operation).to eq(5)
    end
  end

  context "Exit Check" do
    it 'should check if Process receives exit' do
      expect(Process).to receive(:exit)
      Parser.new(Calculator.new, "exit").exit_method
    end
  end
end