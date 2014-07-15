require 'spec_helper'

describe Command do

  it 'should store the operation in history on execution' do
      expect(AddCommand.new(Calculator.new,OperationsHistory.new,2).store).to eq([AddCommand.new(Calculator.new,OperationsHistory.new,2)])
  end
  context "Equality checks" do
        let(:command) do
          Command.new(Calculator.new(3),OperationsHistory.new,5)
        end
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
          command1 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          command2 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          expect(command1.hash).to eq(command2.hash)
        end
  
        it "symmetric property" do
          command1 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          command2 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          expect(command1).to eq(command2) and expect(command2).to eq(command1)
        end
  
        it "transitive property" do
          command1 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          command2 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          command3 = Command.new(Calculator.new(3),OperationsHistory.new,5)
          expect(command1).to eq(command2) and expect(command2).to eq(command3) and expect(command3).to eq(command1)
        end
  end
  it 'stores the operation at the beginning of the History' do
    expect(Command.new(Calculator.new(3),OperationsHistory.new,5).store).to eq([Command.new(Calculator.new(3),OperationsHistory.new,5)])
  end

end