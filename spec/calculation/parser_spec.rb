require 'spec_helper'

describe Parser do

  context "Result Calculation" do

    it 'should be 5 for "add 5"' do
      parser = Parser.new(Calculator.new,OperationsHistory.new,"add 5")
      expect(parser.result).to eq(5.0)
    end

    it 'should be -5 for "subtract 5"' do
      parser = Parser.new(Calculator.new,OperationsHistory.new,"subtract 5")
      expect(parser.result).to eq(-5.0)
    end

    it 'should be 25 for "multiply 5"' do
      parser = Parser.new(Calculator.new(5),OperationsHistory.new,"multiply 5")
      expect(parser.result).to eq(25.0)
    end

    it 'should be 5 for "divide 5"' do
      parser = Parser.new(Calculator.new(25),OperationsHistory.new,"divide 5")
      expect(parser.result).to eq(5.0)
    end

    it 'should be 5 for "sqrt 25"' do
      parser = Parser.new(Calculator.new(25),OperationsHistory.new,"sqrt")
      expect(parser.result).to eq(5.0)
    end

    it 'should be 25 for "sqr 5"' do
      parser = Parser.new(Calculator.new(5),OperationsHistory.new,"sqr")
      expect(parser.result).to eq(25.0)
    end

    it 'should be 125 for "cube 5"' do
      parser = Parser.new(Calculator.new(5),OperationsHistory.new,"cube")
      expect(parser.result).to eq(125.0)
    end

    it 'should be 5 for "cubert 125"' do
      parser = Parser.new(Calculator.new(125),OperationsHistory.new,"cubert")
      expect(parser.result).to eq(5.0)
    end

    it 'should be -5 for "neg 5"' do
      parser = Parser.new(Calculator.new(5),OperationsHistory.new,"neg")
      expect(parser.result).to eq(-5.0)
    end

    it 'should be 0 for "cancel"' do
      parser = Parser.new(Calculator.new(1),OperationsHistory.new,"cancel")
      expect(parser.result).to eq(0)
    end
  end


end