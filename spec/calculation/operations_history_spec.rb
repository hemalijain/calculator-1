require 'spec_helper'

describe OperationsHistory do

  let(:operations_history) {OperationsHistory.new}
  let(:operation) { Parser.new(Calculator.new,OperationsHistory.new,"add 5")}
  it 'stores the operation at the beginning of the History' do
    expect(operations_history.store(operation)).to eq([operation])
  end

  it 'retrieves n number of operations' do
    operations_history.store(operation)
    operations_history.store(operation)
    operations_history.store(operation)
    operations_history.store(operation)
    expect(operations_history.retrieve(2)).to eq([operation,operation])
  end
end

