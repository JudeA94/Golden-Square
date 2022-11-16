require 'dish'
require 'menu'
require 'order'
require 'receipt'

describe Menu do
  context 'menu with one item' do
    it 'view shows item' do
      menu = Menu.new
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, :Sides)
      menu.add(chips)
      expect(menu.view(:Sides)).to eq "Sides\nFrench Fries: Deep fried thin cut potatoes £3.99"
    end
  end
  context 'menu with multiple items in one category' do
    it 'view shows all corrrect items' do
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, :Sides)
      onion_rings = Dish.new('Onion Rings', 'Deep fried battered onion rings', 4.99, :Sides)
      menu = Menu.new
      menu.add(chips)
      menu.add(onion_rings)
      expect(menu.view(:Sides)).to eq "Sides\nFrench Fries: Deep fried thin cut potatoes £3.99\nOnion Rings: Deep fried battered onion rings £4.99"
    end
  end
  context 'a menu with one item in multiple categories' do
    it "view_all put's items sorted by category" do
      menu = Menu.new
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, :Sides)
      wings = Dish.new('Buffalo Wings', 'Deep fried chicken wings in a spicy sauce', 9.99, :Mains)
      menu.add(chips)
      menu.add(wings)
      expect(menu.view_all).to eq "Starters\nMains\nBuffalo Wings: Deep fried chicken wings in a spicy sauce £9.99\nSides\nFrench Fries: Deep fried thin cut potatoes £3.99\nDrinks\nDesserts"
    end
  end
end
