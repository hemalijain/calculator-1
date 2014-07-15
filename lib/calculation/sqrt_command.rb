#Calculates square root
class SqrtCommand < Command
  def execute
    store
    @calculator.sqrt
  end
end