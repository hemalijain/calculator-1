require 'spec_helper'

describe Parser do


  context "Result Calculation" do

    it 'should be 5 for "add 5"' do
      expect(Parser.new(Router.new(Calculator.new),("add 5")).operation).to eq(5.0)
    end
  end
  context 'Parsing' do
    it 'should return [add,5] for "add 5"' do
      parser = Parser.new(Router.new(Calculator.new),("add 5"))
      expect([parser.operator,parser.operand]).to eq(["add",5])
    end
  end
end