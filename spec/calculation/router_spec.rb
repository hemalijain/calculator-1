require 'spec_helper'

describe Router do
  it 'should return 5 for "add 5" ' do
    router = Router.new(Calculator.new)
    expect(router.result(["add",5])).to eq(5)
  end

  it 'should return -5 for "subtract 5" ' do
    router = Router.new(Calculator.new)
    expect(router.result(["subtract",5])).to eq(-5)
  end

  it 'should return 5 for  "divide 5" ' do
    router = Router.new(Calculator.new(25))
    expect(router.result(["divide",5])).to eq(5)
  end

  it 'should return 2 for "sqrt" ' do
    router = Router.new(Calculator.new(4))
    expect(router.result(["sqrt"])).to eq(2)
  end

  it 'should return 64 for "cube" ' do
    router = Router.new(Calculator.new(4))
    expect(router.result(["cube"])).to eq(64)
  end

  it 'should return 4 for "cubert" ' do
    router = Router.new(Calculator.new(64))
    expect(router.result(["cubert"])).to eq(4)
  end

  it 'should return -4 for "neg" ' do
    router = Router.new(Calculator.new(4))
    expect(router.result(["neg"])).to eq(-4)
  end

  it 'should return 0 for "cancel" ' do
    router = Router.new(Calculator.new(3))
    expect(router.result(["cancel"])).to eq(0)
  end

  it 'add is getting called for "add 5"' do
    calculator = Calculator.new
    router = Router.new(calculator)
    expect(calculator).to receive(:+)
    router.result(["add",5])
  end

  context "Exit Check" do
    it 'should check if Process receives exit' do
      expect(Process).to receive(:exit)
      router = Router.new(Calculator.new)
      router.exit_method
    end
  end
end