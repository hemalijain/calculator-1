#Performs arithmetic operations
class Calculator
  def initialize initial_state=0
    @state=initial_state

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

    def reset
      @state = 0
    end


  end
end

