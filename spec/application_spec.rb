require 'spec_helper'

describe Application do
  it "application should exit in the end" do
    allow(Kernel).to receive(:gets).and_return("exit")
    expect(Process).to receive(:exit)
    Application.new.input_output.output(Router.new(Calculator.new))
  end

end
