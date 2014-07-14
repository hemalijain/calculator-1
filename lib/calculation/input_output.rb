#Manages the Input / Output
class InputOutput
  def input
    Kernel.gets
  end
  def output operations_history, calculator
    @parser = Parser.new(calculator,operations_history,input)
    Kernel.puts @parser.result
  end
  def start operations_history, calculator
    puts "Enter command"
    while true
      output operations_history, calculator
    end
  end

end
