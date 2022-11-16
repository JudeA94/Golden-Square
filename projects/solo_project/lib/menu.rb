class Menu
  def initialize
    @menu_list = []
    @categories = [:starter,:side,:main,:drink,:dessert]
  end

  def add(dish)
    @menu_list << dish
  end

  def remove(dish)
    #Removes dish from menu list
  end

  def view(category)
    raise "Current menu is empty!" if @menu_list.empty?
    sort_by_menu_category(category)
  end

  def view_all
    raise "Current menu is empty!" if @menu_list.empty?

  end

  def sort_by_menu_category(category)
    menu_items = []
    @menu_list.each do |dish|
      if dish.category == category
        menu_items << "#{dish.name}: #{dish.description} £#{dish.price}"
      end
    end
    menu_items.join("\n")
  end
end