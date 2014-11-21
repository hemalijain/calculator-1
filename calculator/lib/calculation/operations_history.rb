#Maintains the operation History
class OperationsHistory
  def initialize
    @history=[]
  end
  def store operation
    @history.unshift(operation)
  end
  def retrieve number_of_operations
    @history.take(number_of_operations).reverse
end
end