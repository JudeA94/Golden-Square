require 'contacts'
describe Contacts do
  it 'can manually add contacts to list' do
    diary = Diary.new
    contact_list = Contacts.new(diary)
    contact_list.add('07700000000')
    expect(contact_list.view).to eq '07700000000'
  end
  it "raises error with message if number invalid" do
    diary = Diary.new
    contact_list = Contacts.new(diary)
    expect{ contact_list.add('077000hgjh') }.to raise_error "That's not a valid phone number!"
  end
end
