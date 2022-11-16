class Receipt
  def initialize(order)
    @order = order.list
    @service = 0.125
  end

  def view
    raise 'Receipt empty' if @order.empty?

    itemised = []
    @order.each do |dish|
      itemised << "#{dish.name}: £#{dish.price}"
    end
    end_of_bill(itemised)
  end

  def calculate_service
    raise 'Receipt empty' if @order.empty?

    (total * @service).round(2)
  end

  def total
    raise 'Receipt empty' if @order.empty?

    total = 0
    @order.each do |dish|
      total += dish.price
    end
    total
  end

  def total_with_service
    raise 'Receipt empty' if @order.empty?

    total + calculate_service
  end

  def adjust_tip(percentage)
    raise 'Receipt empty' if @order.empty?

    @service = (percentage / 100.0)
    total * @service
  end

  def confirm
    raise 'Receipt empty' if @order.empty?
    # Sends text
  end

  private

  def end_of_bill(itemised)
    itemised << "Service Charge: £#{calculate_service}"
    itemised << "Total: £#{total_with_service}"
    itemised.join("\n")
  end
end

class Menu
  def initialize
    @menu_list = []
    @categories = %i[Starters Mains Sides Drinks Desserts]
  end

  def add(dish)
    @menu_list << dish
  end

  def remove(dish)
    @menu_list.delete(dish)
  end

  def view(category)
    raise 'Current menu is empty!' if @menu_list.empty?

    sort_by_menu_category(category)
  end

  def view_all
    raise 'Current menu is empty!' if @menu_list.empty?

    all_menu = []
    @categories.each do |category|
      all_menu << sort_by_menu_category(category)
    end
    all_menu.join("\n")
  end

  def sort_by_menu_category(category)
    menu_items = [category.to_s]
    @menu_list.each do |dish|
      menu_items << "#{dish.name}: #{dish.description} £#{dish.price}" if dish.category == category
    end
    menu_items.join("\n")
  end
end

class Order
  def initialize
    @order_list = []
  end

  def list
    @order_list
  end

  def add(dish, quantity)
    quantity.times do
      @order_list << dish
    end
  end

  def remove(dish, quantity)
    raise 'Item not on order' unless @order_list.include?(dish)
    raise 'You dont have that many of that dish on the order' unless @order_list.count(dish) >= quantity

    quantity.times do
      index = @order_list.find_index(dish)
      @order_list.delete_at(index)
    end
  end

  def view
    raise 'Current order is empty!' if @order_list.empty?

    current_order = []
    dishes = @order_list.uniq
    dishes.each do |dish|
      current_order << "#{dish.name} x #{@order_list.count(dish)}"
    end
    current_order.join(', ')
  end
end

class Dish
  def initialize(name, description, price, category)
    @name = name
    @description = description
    @price = price
    @category = category
  end

  attr_reader :name, :description, :category, :price
end

menu = Menu.new
chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, :Sides)
onion_rings = Dish.new('Onion Rings', 'Deep fried battered onion rings', 4.99, :Sides)
wings = Dish.new('Buffalo Wings', 'Deep fried chicken wings in a spicy sauce', 9.99, :Mains)
burger = Dish.new('Cheeseburger', 'Cheeseburger with lettuce onion and tomato', 12.99, :Mains)
menu.add(chips)
menu.add(onion_rings)
menu.add(wings)
menu.add(burger)
puts menu.view_all
