# require 'receipt'

# describe Receipt do
#   context 'an empty receipt' do
#     it 'raises error when view is called' do
#       receipt = Receipt.new
#       expect{ receipt.view }.to raise_error "Current receipt is empty!"
#     end
#     it 'raises error when total is called' do
#       receipt = Receipt.new
#       expect{ receipt.total }.to raise_error "Current receipt is empty!"
#     end
#     it 'raises error when adjust_tip is called' do
#       receipt = Receipt.new
#       expect{ receipt.adjust_tip(10) }.to raise_error "Current receipt is empty!"
#     end
#     it 'raises error when text is called' do
#       it 'raises error when total is called' do
#         receipt = Receipt.new
#         expect{ receipt.text }.to raise_error "Current receipt is empty!"
#       end
#     end
#   end
# end