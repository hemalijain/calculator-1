#Manages the Input / Output
class InputOutput
  def input
    Kernel.gets
  end
  def output router
    @parser = Parser.new(router,input)
    Kernel.puts @parser.operation
  end
  def start router
    puts "Enter command"
    while true
      output router
    end
  end

end
