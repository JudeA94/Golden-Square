require 'order'

describe Order do
  context 'an empty order' do
    it 'raises error when view is called' do
      order = Order.new
      expect{ order.view }.to raise_error "Current order is empty!"
    end
  end
end