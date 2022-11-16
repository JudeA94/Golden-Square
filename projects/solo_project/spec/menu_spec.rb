require 'menu'

describe Menu do
  context 'an empty menu' do
    it 'raises error when view is called' do
      menu = Menu.new
      expect{ menu.view('side') }.to raise_error "Current menu is empty!"
    end
    it 'raises error when view_all is called' do
      menu = Menu.new
      expect{ menu.view_all }.to raise_error "Current menu is empty!"
    end
  end
end
