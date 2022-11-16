class Order
  def initialize
    @order_list = []
  end

  def add(dish,quantity)
    quantity.times do
      @order_list << dish
    end
  end

  def remove(dish, quantity)
    # Removes dish from order list
  end

  def view
    raise "Current order is empty!" if @order_list.empty?
  end
end
