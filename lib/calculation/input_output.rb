#Manages the Input / Output
class InputOutput
  def input
    Kernel.gets
  end
  def output operations_history, calculator
    command = (Parser.new(calculator,operations_history,input)).result
    Kernel.puts command.execute
  end
  def start operations_history, calculator
    puts "Enter command"
    while true
      output operations_history, calculator
    end
  end

end
