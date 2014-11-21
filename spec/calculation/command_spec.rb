require 'spec_helper'

describe Command do

  context 'storing_history' do
    [AddCommand, MultiplyCommand, SubtractCommand, DivideCommand,
     CubertCommand, CubeCommand, SqrCommand, SqrtCommand, NegCommand].each do |class_name|

      let(:command) do
        class_name.new(Calculator.new(3), OperationsHistory.new, 5)
      end

      it 'should store the operation in history on execution' do
        expect(class_name.new(Calculator.new, OperationsHistory.new, 2).store).to eq([class_name.new(Calculator.new, OperationsHistory.new, 2)])
      end

    end
  end

  [RepeatCommand, NullCommand, ExitCommand, CancelCommand].each do |class_name|

    let(:command) do
      class_name.new(Calculator.new(3), OperationsHistory.new, 5)
    end

    it 'should store the operation in history on execution' do
      expect(class_name.new(Calculator.new, OperationsHistory.new, 2).store).to eq(nil)
    end

    end
  [RepeatCommand, AddCommand, MultiplyCommand, SubtractCommand, NullCommand, ExitCommand, CancelCommand, DivideCommand,
   CubertCommand, CubeCommand, SqrCommand, SqrtCommand, NegCommand].each do |class_name|

    let(:command) do
      class_name.new(Calculator.new(3), OperationsHistory.new, 5)
    end

    context "Equality checks" do


      it "should be equal for same object id" do
        expect(command).to eq(command)
      end

      it "should not be null" do
        expect(command).to_not eq(nil)
      end

      it "should not be equal for different type" do
        object = Object.new
        expect(command).to_not eq(object)
      end

      it "should have same hash code" do
        command1 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        command2 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        expect(command1.hash).to eq(command2.hash)
      end

      it "symmetric property" do
        command1 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        command2 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        expect(command1).to eq(command2) and expect(command2).to eq(command1)
      end

      it "transitive property" do
        command1 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        command2 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        command3 = class_name.new(Calculator.new(3), OperationsHistory.new, 5)
        expect(command1).to eq(command2) and expect(command2).to eq(command3) and expect(command3).to eq(command1)
      end


    end


  end
end
