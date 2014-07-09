require 'spec_helper'

describe Calculator do

  context "operations" do
    context "Addition" do
      it 'should add 5 ' do
        calculator = Calculator.new()
        expect(calculator.+(5)).to eq(5)
      end

      it 'should add 5 to the existing number 4 ' do
        calculator = Calculator.new(4)
        expect(calculator.+(5)).to eq(9)
      end

    end
    context "Multiplication" do
      it 'should multiply 4 ' do
        calculator = Calculator.new()
        expect(calculator.*(5)).to eq(0)
      end

      it 'should multiply 5 to the existing number 4 ' do
        calculator = Calculator.new(4)
        expect(calculator.*(5)).to eq(20)
      end

    end

    context "Division" do
      it 'should divide 4 ' do
        calculator = Calculator.new()
        expect(calculator./(5)).to eq(0)
      end

      it 'should divide 5 to the existing number 20 ' do
        calculator = Calculator.new(4)
        expect(calculator./(5)).to eq(0)
      end

      context "Divide By Zero Exception" do

        it 'should not raise divide by zero exception' do
          calculator = Calculator.new()
          expect {
            calculator./(0)
          }.to_not raise_exception
        end
      end

      context "reset" do
        it 'should reset ' do
          calculator = Calculator.new()
          expect(calculator.reset).to eq(0)
        end

      end
    end
  end
end