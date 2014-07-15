#Calculates square
class SqrCommand < Command
  def execute
    store
    @calculator.sqr
  end
end