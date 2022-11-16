require 'dish'
require 'menu'
require 'order'
require 'receipt'

describe Menu do
  context 'menu with one item' do
    it 'view shows item' do
      menu = Menu.new
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, 'side')
      menu.add(chips)
      expect(menu.view('side')).to eq 'French Fries: Deep fried thin cut potatoes £3.99'
    end
  end
  context 'menu with multipple items in one category' do
    it 'view shows all corrrect items' do
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, 'side')
      onion_rings = Dish.new('Onion Rings', 'Deep fried battered onion rings', 4.99, 'side')
      menu = Menu.new
      menu.add(chips)
      menu.add(onion_rings)
      expect(menu.view('side')).to eq "French Fries: Deep fried thin cut potatoes £3.99\nOnion Rings: Deep fried battered onion rings £4.99"
    end
  end
  context 'a menu with one item in multiple categories' do
    it "view_all put's items sorted by category" do
      menu = Menu.new
      chips = Dish.new('French Fries', 'Deep fried thin cut potatoes', 3.99, 'side')
      wings = Dish.new('Buffalo Wings', 'Deep fried chicken wings in a spicy sauce', 9.99, 'main')
      menu.add(chips)
      menu.add(wings)
      expect(menu.view_all).to eq "Sides\nFrench Fries: Deep fried thin cut potatoes £3.99\nMain\nBuffalo Wings: Deep fried chicken wings in a spicy sauce £9.99"
    end
  end
end
