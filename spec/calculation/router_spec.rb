require 'spec_helper'

describe Router do
  it 'should return 5 for "add 5" ' do
    router = Router.new
    expect(router.result(["add",5])).to eq(5)
  end

  context "Exit Check" do
    it 'should check if Process receives exit' do
      expect(Process).to receive(:exit)
      router = Router.new
      router.exit_method
    end
  end
end