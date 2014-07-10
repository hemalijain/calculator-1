#Invokes the calculator operations and passes the output to parser
class Router
  def initialize
    @calculator = Calculator.new
  end

  def result input
    case input[0]
    when 'add'
    @calculator.+(input[1])
    when 'subtract'
    @calculator.-(input[1])
    when 'multiply'
    @calculator.*(input[1])
    when 'divide'
    @calculator./(input[1])
    when 'cancel'
    return @calculator.reset()
    when 'exit'
    exit_method
    else
    return "Wrong command"
    end
  end


  def exit_method
    Process.exit
  end

end
