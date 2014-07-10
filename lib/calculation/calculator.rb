#Performs arithmetic operations
class Calculator
  def initialize initial_state=0
    @state=initial_state
  end

    def + value
      value + @state
    end

    def - value
      value - @state
    end

    def * value
      value * @state
    end

    def / value
      begin
        if value!=0
          @state / value
        end
      rescue
        puts 'Cannot Divide by zero'
      end
    end

    def abs value
      value.abs
    end


    def neg value
      -(value)
    end

    def sqrt value
      begin
        Math.sqrt value
      rescue
        puts "Returns Complex number"
      end
    end

    def sqr value
      value ** 2
    end

    def cube value
      value ** 3
    end

    def cubert value
      Math.cbrt value
    end

    def reset
      @state = 0
    end

  end
