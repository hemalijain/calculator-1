#Manages the Input / Output
class InputOutput
  def initialize parser
    @parser = parser
  end
  def input
    Kernel.gets
  end
  def output
    Kernel.puts @parser.operation input
  end
  def start
    puts "Enter command"
    while true
      output
    end
  end

end
